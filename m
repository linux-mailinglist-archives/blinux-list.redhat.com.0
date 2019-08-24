Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A219B99B
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 02:28:07 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 4A9EF2A09D4;
	Sat, 24 Aug 2019 00:28:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 252231001284;
	Sat, 24 Aug 2019 00:28:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9D9ED1802218;
	Sat, 24 Aug 2019 00:28:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7O0S1h0020263 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Aug 2019 20:28:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9A72460605; Sat, 24 Aug 2019 00:28:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx23.extmail.prod.ext.phx2.redhat.com
	[10.5.110.64])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9478460933
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 00:27:59 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
	[209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A491B107DD22
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 00:27:58 +0000 (UTC)
Received: by mail-oi1-f175.google.com with SMTP id k22so8306589oiw.11
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 17:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=iCH3ZrSLWVbgYbWT2a6rzqDlkAfS8W/kOhkT+wT1K0M=;
	b=o24NjilvG7GiA7s8YBLeSRdFmaVnw5OUc0VCkXtCe55y8xfwzg45/SQU5nNUqjGSW6
	+bkZ3n0/FBYcYPgGTA5dIZfs4vbsHMdUHUqOQqP37kHkDwlMveucHUIfCAaBc5cKRkcH
	0cgQICuB9CRrJOEjInJGSHD9x0lv42Ey4GYuLrVukMt9rlgCKLOTFu9g0YMfdFDAmWY4
	DzTjM/gxumM8gS7hzWsKnO1DKqFvicpCaWvJCkYyxrimOU7iOVAlUkq/87l4OwcSOFuC
	5asZ8nHchPSOGPKXrBE4bJQLMbsgaIZOK1wATav+JzR5FRbkZ5FwJqkGr4ZtGxGwvFnT
	ko2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=iCH3ZrSLWVbgYbWT2a6rzqDlkAfS8W/kOhkT+wT1K0M=;
	b=YGgt9NlRSMJXlZh/ItmJKfuRxC0TFVrG9I6PmgfCDBc8R226wQX02CfJ9SkEZgLF+F
	G4Z3/Zx5l9xI8Kd8qLNVDA1PQc3Kvd96wm7csXZqCWn2Nj6LAdrBY5ka9WW8AMBXaS+j
	CPBxatvHhBF2fjbBPX6oNTlfTXBxCrrOGnk1wBvdQgHYu2ep4kReY5Uvc7SNy62Lnbzy
	ieyjeW91IrX2FEa14EK9DVCiPNYghOUZjX6/JcbFSXFKV8Biajv5fm9EnmG0QW7T3t4a
	7plYEmL9aKYHk+5QjtD7cL7KrbemJwI/WV3ZpI4CSFT9hSC16WXaNAMU2jwg5nDhE43L
	dLOg==
X-Gm-Message-State: APjAAAUsTfD2kVzJBKcPK/QMNHzhyef+uSYipqeXsCia67ttuJwjQayO
	l0Bhn5kP6bnXZOekNABXpH6BH+7/DFjRiUhvC22gfg==
X-Google-Smtp-Source: APXvYqx/PwaReBq43pjFyNJ7DYMoO2JXETKCRIzHUO6GXGVThooE3sLd8BjrlUzRrsvoCq5B6mlu8I0IAzYHkto2dKs=
X-Received: by 2002:aca:c58d:: with SMTP id v135mr4933762oif.42.1566606477674; 
	Fri, 23 Aug 2019 17:27:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:48d:0:0:0:0:0 with HTTP;
	Fri, 23 Aug 2019 17:27:57 -0700 (PDT)
In-Reply-To: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
Date: Sat, 24 Aug 2019 00:27:57 +0000
Message-ID: <CAO2sX326=2uYK8EPwN5xLn58fy3_0OwFwSt9CMOA=v6oTMvOhQ@mail.gmail.com>
Subject: Re: amazon?
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.64]);
	Sat, 24 Aug 2019 00:27:58 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.64]);
	Sat, 24 Aug 2019 00:27:58 +0000 (UTC) for IP:'209.85.167.175'
	DOMAIN:'mail-oi1-f175.google.com'
	HELO:'mail-oi1-f175.google.com' FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.167.175 mail-oi1-f175.google.com 209.85.167.175
	mail-oi1-f175.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.64
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Sat, 24 Aug 2019 00:28:05 +0000 (UTC)

I suspect lack of JavaScript support in most text-mode browsers is at
least part of the problem. Amazon works well enough in Firefox with
Orca, but much of the site simply won't load if JavaScript is disabled
or blocked.

Admittedly, Firefox working is annoying in its own way since if I
didn't need Firefox, I could ditch the GUI altogether.

On 8/23/19, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Hi folks,
> sharing and asking for ideas about the following.
> Has anyone visited amazon.com/access
> lately in elinks and enjoyed success?  Lynx either for that matter, or
> anything  else?
> Previously the main site the m.site and or the access site could result in
> something.
> Now though  either
> a, the site claims not to recognize cookies even after accepting them,
> lynx.
> b. the site will not function without cookies, links and elinks, neither of
>
> which? actually supports cookies in the first place.
> c. if  you  make multiple efforts to reach your account the site thinks
> you are  trying to hack presenting you with a captcha page with no  actual
> links on it.
> d.  if you try to log in at amazon.com/access in a low graphics browser, or
>
> links or elinks, the sign in page is 15 pages long with no alt tags
> associated with where the information goes.
> e. if amazon staff  provides you with their own captcha data, a work
> around they were using for the  badly constructed verification, it now
> also fails.
> Amazon claims to have accessibility staff, but they seem to be no longer
> aware of the importance of Linux access.
> So...thoughts and or ideas?
> Thanks,
> Karen
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
