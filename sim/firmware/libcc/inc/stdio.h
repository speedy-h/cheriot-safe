// Include file for 1BL

#ifndef __STDIO_H_INCLUDE__
#define __STDIO_H_INCLUDE__

#include <stdarg.h>
#include <gloss.h>

//#ifdef __cplusplus
//extern "C" {
//#endif

//=================================================
// Defines
//=================================================
#define getchar()           fgetc((FILE*)0)
#define getc()              fgetc((FILE*)0)
#define gets(s,size)        fgets(s,size,(FILE*)0)
#define putchar_se(c)       fputc(c,(FILE*)STDOUT)
#define putc(c)             fputc(c,(FILE*)STDOUT)
#define puts(s)             fputs(s,(FILE*)STDOUT)
#define printf(fmt,args...) cfprintf((FILE*)STDOUT,fmt,##args)

//=================================================
// Prototypes
//=================================================
int fgetc    (FILE *stream);
char * fgets (char *s, int size, FILE *stream);
char * pfgets(char *s, uint32_t size); // Packetized PSI specific
int fputs    (const char *s, FILE *stream);
int fputc    (int c, FILE * stream);

int cfprintf (FILE *stream, const char *format, ...);
int fprintf  (FILE *stream, const char *format, ...);
int pfprintf (FILE *stream, const char *format, ...);
int psprintf (char * line,  const char *format, ...);
int pvsprintf(char * line,  const char *format, va_list ap);

void print_test_header( const char * test );
void print_array(uint32_t * arr, const char * str, uint32_t num);

#ifdef SILENCE_PPRINTF
  // #pragma message "PPRINTF DISABLED!"
#define pprintf(fmt, args...) while(0) { pfprintf((FILE *)0, fmt, ## args); }
#else
  // #pragma message "PPRINTF ENABLED!"
  #define pprintf(fmt, args...) pfprintf((FILE *)0, fmt, ## args)
#endif

//#ifdef __cplusplus
//}
//#endif

#endif
