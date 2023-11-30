Return-Path: <blinux-list+bncBDYPVTOXSQEBBDXNUKVQMGQEH32G6BY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mail.lfdr.de (Postfix) with ESMTPS id C22857FF4B2
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 17:21:35 +0100 (CET)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-1fa37d7ab05sf1268343fac.3
        for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 08:21:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701361294; cv=pass;
        d=google.com; s=arc-20160816;
        b=p/pghV3hpoa1wLdCQdbl7n96cCtumeNLleWAsIIe8kqz/tDpRRHI4xuHdLNZqWMrty
         ysa7uAOf8zxpRolsl/n+zN2l8fQPz2OSo4iaiuTjcAOBPRwwkpXgSksyeTsRr0XnqRJS
         S7Pt5PH6ifXgMnYqS+qer1oEqUk/BAIXeX77nIGiFGsx/KiXgTUnbdQUE3aUHfmAk24z
         s+1Cq+zxB8P7wDR8DzDGuf4jYbYh8USSLyLY4C0ua9HEksi+tn1d3cj+aQPZJyAQSy41
         1EjZ85dF6ISApV8pbgKWM6KGGJnDVjxXrVinM3MihCOYyLk0KHovgnC9WQHB4V7h393g
         j7uA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=AVbTW+jBsjIlN/tC++3LKYjkgJhnSfgAOBvGDA41uzU=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=lA4EcydCWpWM+knN/CTzV4HSGfpf29aOiqbqcdO4uywxM0qfCOAf/AT3rHmeTvz7o8
         8mjfE8vhEXg84sxORXRPt8vUnmiUPcsSmLKDGkUb08tgUkkDoym/0IOVsRHsPbRgjNN7
         I+2qiLw1XCu3ZzZm4OYV4kYVdWV6TA/OCeAHbBg/qi9mMXzOMeucg5/plpCzacZ9snKC
         iMMsHhh9I6vOwd9elUtMFsZmZS4XS3pSBqxt7PSY7uMGfubRiWdXrs/v4DCNraWa0IZn
         M4/pX93B+QTdSjFZJ99Fy0G5TIRRNuEaIqjFFIELoiwaNj7KeYK2UcPAJI34v5yTKQGe
         BecQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701361294; x=1701966094;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AVbTW+jBsjIlN/tC++3LKYjkgJhnSfgAOBvGDA41uzU=;
        b=Ibu+3LfNSwrxKJGBzYOXSOFoAmiIIPD3FgJokp2bsEhDXbO45QhZU7k293xo1oDZck
         Rot1wLV7T/ESH5oyiVd8ManLGFTCwk+Ud9j3RoUFtjZi6SfO7IDypQNNSWVqeOsVwvvr
         hB5E5aLXZp65pogUV1S0K+kLtyzsOS0Jl3/vTtBfILlijkEWAvmcBVwsUx5nDBNhmISM
         vO24DDIIY10+7RiXPhF/8Ww0bL8k6Sb6rZ/VjYe/jd5FB0K+FdKF6xPqr2JoUjQnoBZm
         zdkQ6Rk+nETd9uFgPzU9mmXaOSsjBi8ijMmJ7BQedkeqa8+FP2wEqJAdxlSWfDXXBRoV
         Vwpw==
X-Gm-Message-State: AOJu0YyXHe2sOGTrQvp6SwqILXmjfOuMwPinKP+3mgXy3pyxnPm6X5KY
	DzLxNRtEGzOwdlUhSJ4lFen6LA==
X-Google-Smtp-Source: AGHT+IHS47c1vm+Qty5h1ATwracAA18HlfRVz5LVe0RRMIgXMG2WsJsDroF19LYDet0RAmcBfSfJRQ==
X-Received: by 2002:a05:6870:3308:b0:1f9:efdb:966a with SMTP id x8-20020a056870330800b001f9efdb966amr24159827oae.44.1701361294165;
        Thu, 30 Nov 2023 08:21:34 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5bcd:0:b0:423:84c3:cf93 with SMTP id b13-20020ac85bcd000000b0042384c3cf93ls485578qtb.1.-pod-prod-06-us;
 Thu, 30 Nov 2023 08:21:33 -0800 (PST)
X-Received: by 2002:a05:620a:8d0f:b0:77d:a51c:dd52 with SMTP id rb15-20020a05620a8d0f00b0077da51cdd52mr12397870qkn.78.1701361293512;
        Thu, 30 Nov 2023 08:21:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701361293; cv=none;
        d=google.com; s=arc-20160816;
        b=unkfWUbcuAEWOXTrXj34Dr+t/9W+uJ5AcR6o2+axn0cwm9f36gWSieL25K95N83MyC
         iCUYdYcWWQ1n0Bm5NWKXyhDqCYaTJcQHJ6XFXOYmk3IdoxjPz47xWg6/6MaX7hvJ2Sai
         8ZFH81CHL+YhXF0+ZxhexLfD+qwTUWgQvd60L9VAbduUKZekO60K3yvgigkosjtRbVA/
         dRym/q1xhsjzzW4A3kaCQAb2GDWmKsKwppGT//JMmXHA1qTejkuM3jV8v1gSNlv9DKvP
         kDqMTJXMT25xE8RenTXig0nQPWwd1uEb8LQDcIiAg1/LWmSCTio9rSAGHn2ACF6maAO9
         YNsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=rhNzZrOq8gZruao20c1DW4MSVeo5U4Lo/NAfW40rN2M=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=Y0pyd8Rko7GnvQJvvHghXZQPXDB/1DdQZqW3bT9TKOxD0JbUjrlHbHC29ay24ze7G4
         QINUG4xOOfDfg+SjKlCiLS1fyYbRljniqHoYVGNKrEQTgtFdYL6XUSA3f3j1r2nWCdIK
         P/d4kdq9d5faJ8aIdhPOGKCd7+TiquPtfIUW1tr4QbBvQudw7F8pGTMfjxodxxxeQOm7
         ZWRGNYBOmBs6JhA5/p78Djr8HamKXpRbmERogji3kxJp2eExc37nNfmT5MxXQ3jQqg7b
         QpRF5AgvkaR94pT2k9z1UJGL6Qwrl2iHerhYj+u/gACJtxH0WA7qsxqWsGiLoY9u/iu0
         AlEw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id bi20-20020a05620a319400b0077d8a0d4053si1370241qkb.631.2023.11.30.08.21.33
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 08:21:33 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-417-MmLHlIgbMce0apcqG7xAaQ-1; Thu,
 30 Nov 2023 11:21:30 -0500
X-MC-Unique: MmLHlIgbMce0apcqG7xAaQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A3E343C025CB
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 16:21:30 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 9E51B1C060B1; Thu, 30 Nov 2023 16:21:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 967021C060AE
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 16:21:30 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6C0553C025CB
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 16:21:30 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-474-kKTHlp-wMBCrY7UcTw8psA-1; Thu,
 30 Nov 2023 11:21:28 -0500
X-MC-Unique: kKTHlp-wMBCrY7UcTw8psA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Sh1fH5cgczMFK;
	Thu, 30 Nov 2023 11:21:27 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Sh1fH5JmHzcbc; Thu, 30 Nov 2023 11:21:27 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Sh1fH5D0SzcbC;
	Thu, 30 Nov 2023 11:21:27 -0500 (EST)
Date: Thu, 30 Nov 2023 11:21:27 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick links are numbered question?
In-Reply-To: <Pine.LNX.4.64.2311301103200.3728673@users.shellworld.net>
Message-ID: <5d011372-8b4d-d519-6fc8-f54549926285@panix.com>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net> <c9277002-d894-203e-511b-952f27c98048@panix.com> <Pine.LNX.4.64.2311292132230.3719449@users.shellworld.net> <7640c72f-2f0b-9f4f-11f4-5d660150b273@panix.com>
 <Pine.LNX.4.64.2311292213270.3720159@users.shellworld.net> <7634f774-0813-cb35-2519-7ceb2e4216af@panix.com> <Pine.LNX.4.64.2311301103200.3728673@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Is it only numbered links you need when working with elinks?  If you need
more options than that, let me know.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Thu, 30 Nov 2023, Karen Lewellen wrote:

> Jude,
> I dare say this applies only to a personal build?
> Speaking personally, I am not a programmer, and the script concept seems more
> trouble then simply reaching the menu bar, but that is  just me.
> Kare
>
>
>
> On Thu, 30 Nov 2023, Jude DaShiell wrote:
>
> > With these browsers a command like:
> > elinks --help|less
> > makes the command options come up at a more reasonable pace and it's
> > possible to write a script like mylinks.sh that starts the browser has all
> > your favorite command line options on the same line and ends with $1 which
> > takes an url if you type
> > mylinks <url>
> > later once you make the script executable.
> > If you figure out you need more command line options and you know what
> > those options are, edit the mylinks script again and you don't need to
> > mess with menus any longer.
> >
> >
> > --
> > Jude <jdashiel at panix dot com>
> > "There are four boxes to be used in defense of liberty:
> > soap, ballot, jury, and ammo.
> > Please use in that order."
> > Ed Howdershelt 1940.
> >
> > On Wed, 29 Nov 2023, Karen Lewellen wrote:
> >
> >> And Jude provides the command line option.
> >> Thanks.
> >>
> >>
> >>
> >> On Wed, 29 Nov 2023, Jude DaShiell wrote:
> >>
> >>> links -html-numbered-links=1 should do that for you.
> >>>
> >>>
> >>> --
> >>> Jude <jdashiel at panix dot com>
> >>> "There are four boxes to be used in defense of liberty:
> >>> soap, ballot, jury, and ammo.
> >>> Please use in that order."
> >>> Ed Howdershelt 1940.
> >>>
> >>> On Wed, 29 Nov 2023, Karen Lewellen wrote:
> >>>
> >>>> I did say links the chain, you are thinking of l y n x which is not the
> >>>> same
> >>>> browser.
> >>>>
> >>>>
> >>>>
> >>>> On Wed, 29 Nov 2023, Jude DaShiell wrote:
> >>>>
> >>>>> There is no keystroke for that.  You can turn that on in options or
> >>>>> start
> >>>>> lynx with lynx -number_fields.
> >>>>>
> >>>>>
> >>>>> --
> >>>>> Jude <jdashiel at panix dot com>
> >>>>> "There are four boxes to be used in defense of liberty:
> >>>>> soap, ballot, jury, and ammo.
> >>>>> Please use in that order."
> >>>>> Ed Howdershelt 1940.
> >>>>>
> >>>>> On Wed, 29 Nov 2023, Karen Lewellen wrote:
> >>>>>
> >>>>>> Hi folks,
> >>>>>> for those using links the chain, there is a command line option that
> >>>>>> turns
> >>>>>> on
> >>>>>> links are numbered.
> >>>>>> Can someone remind me of the keystroke?
> >>>>>> Thanks,
> >>>>>> Karen
> >>>>>>
> >>>>>>
> >>>>>>
> >>>>>>
> >>>>>
> >>>>> --
> >>>>> You received this message because you are subscribed to the Google
> >>>>> Groups
> >>>>> "blinux-list@redhat.com" group.
> >>>>> To unsubscribe from this group and stop receiving emails from it, send
> >>>>> an
> >>>>> email to blinux-list+unsubscribe@redhat.com.
> >>>>>
> >>>>>
> >>>>
> >>>>
> >>>
> >>
> >
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

