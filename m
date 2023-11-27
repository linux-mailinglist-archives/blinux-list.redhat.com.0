Return-Path: <blinux-list+bncBDYPVTOXSQEBBH6HSGVQMGQESBAL5AY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 185237F9CD0
	for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 10:38:41 +0100 (CET)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-1fa2c05f064sf2426744fac.3
        for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 01:38:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701077919; cv=pass;
        d=google.com; s=arc-20160816;
        b=EupcEgv0DfCsM9B4NObJzcGXaNttwcMIApIizl5a7pqIP9U0y51MHr1uSaFnP1/u+M
         8xzAvD7BeXJha37/JWtMrIARgqaOc+xwLvAArqc3iqgwc3PDjSNDex/b2+ddK6Vz5mTP
         v1hifGMV3VNbSeVYbfXIKTIExi7KFxP1a6VrmAvT08Z5n1/qvImpkdWf3BSUKC20AFQB
         yMXJlqqYNIhxHeIRbL7Z+jYQsqoR3nuvD4w1XQbXDm10uUcSdjZ9fb4UZ73hPjPau19G
         xoo1gCVxh6+sh4+QOJSouWn+QgZgShAMWmn1u1oGfF02F4mO/wrFYfYf+UcVYRzioX44
         o2pQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=dhmeIOai481qnmJzrrK7QA/iTee85YFwZVVPH3j1b8c=;
        fh=jk4/8+vke49Mn/l4pp5wXjL65nsmbLCmV0qbuWlAFC8=;
        b=RT5BdWsAgx95Izyx3ar7qOTzx/F1RwpiTl0CUxnSGLDmfOyfgOmvTKSyYbjzSpwm3B
         U/GkxI/cOeSs6y8Cvd9bkxEEJoX30hbheqfMQGFCE9PGGJBARngJIhOywNn8MPZzeamZ
         qFz8fVg4cJxFoVDQQIp8lUjvZAIk9DTOIdKLULCfkmoXgR2NIJnjmLplo8fGFCVKJ3bA
         5VlDxx7ypEgYYQA2Pzv+i+Pbf649TUhOeHhHjx028rgYW5G9D9kD2cU5xpRF6MdYYI1O
         BLkl+N2zmaNi60ugrS43i8wi+996Jjnub/ZuqCmxy3Hcd338dy5JdaGcprcrxS6I4hMq
         SfFQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701077919; x=1701682719;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dhmeIOai481qnmJzrrK7QA/iTee85YFwZVVPH3j1b8c=;
        b=deH43HaFas471dHHbUEL6SP7rb8K9+EdkWqswxLrrmLVS1P5srJU1HzBxB3jcMbNGY
         o0EjMeN5lz4aQiH3CsP7la2hK6GhSN+rZYqjf3rRNTIl0cwbqsjPmyULVyW/9gRY2Nhy
         auBJOA1cVrMKVytTvlM4DJvhoysvPq/0shMh6rmSJFkosgHjTaXPmyQgHhfOOD5dWxnK
         lJYzl68SxVyDKRVcdOe0gMHzrqxN36p3v/F0OLfzAEfiPasjD2wGZwa5dk0ldmWX2ZKx
         kjQRt9OXN/46xYjAtcPjJXxrMqfjOiMv4yxGczyUL8P+DpIv5UHhYcXgwGqyJNFHfhB6
         IR8g==
X-Gm-Message-State: AOJu0Yx6XFZdIMHWMbNwDGrTcXd29fUT3Brn8Rh+c/OFNfIAYjbEm3eZ
	v326V8Y6U380qFrZqMgBrtEuaw==
X-Google-Smtp-Source: AGHT+IEcpcat4k+2s2N+L7fm+N/Lp6mO9ZPshK4hKqT/davZSvBM6f3Vv0Ybnyw8DF+QBfjkfrxkbg==
X-Received: by 2002:a05:6870:8dc3:b0:1fa:1d14:2a43 with SMTP id lq3-20020a0568708dc300b001fa1d142a43mr10341147oab.24.1701077919762;
        Mon, 27 Nov 2023 01:38:39 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6871:60f:b0:1fa:21a5:2e09 with SMTP id
 w15-20020a056871060f00b001fa21a52e09ls2663345oan.1.-pod-prod-03-us; Mon, 27
 Nov 2023 01:38:39 -0800 (PST)
X-Received: by 2002:a05:6870:c44:b0:1fa:1ca4:b917 with SMTP id lf4-20020a0568700c4400b001fa1ca4b917mr11629402oab.41.1701077918972;
        Mon, 27 Nov 2023 01:38:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701077918; cv=none;
        d=google.com; s=arc-20160816;
        b=zOgclgAud6R528Ojqc/x5ao6zViOLX3eMxvN06dBEMPvItTe17VXR6GhbCFYBZbXVz
         qN4UCdbnqUf3QGiWKpyPGZ4N1n/hM+WJ481uw7X5D1c2Eh3mSvGiuBQDAWEI3GnmnnDQ
         s3Lzx5g+eaMQy2Dt2VM6KIop2vnp+Iz4KFiLvUAj0mmsBWdI8SqgAwSdirT01o08NQg4
         V6guSvrQT5uowa/bzS505KJxe9R7bRi5DXa7ROq6DwL9YBMQZXhANjaY3hGA22Dnh/qO
         dMXYLYgpxerFNQhoWCIFSpke/vKuQ2XogxWTBR1TjnsToRyvThfqB9fU2ViuwG36TETi
         adsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=SB68rM1UnJHwd8XIwT40Aam1hbLFjMzv+GjHVsXsWQI=;
        fh=jk4/8+vke49Mn/l4pp5wXjL65nsmbLCmV0qbuWlAFC8=;
        b=rgivYsuaC+OiJMzriF4mKVcItHaok3chFXPSflGwsX6reQ4GB6EbHcz9gOefXDed7Y
         E8Cz+0mN6+0+IT1tpLG35JxZ1ELh9r0K6zfqT7wimLbM16rL/bs+S1K4SgL4dJEK0wpu
         mV55pcmpRoyX5j35mOiPNO+vixN9UYPlZbgg2cjQX/cYHndHaBgE7nl0b7eXDsRB66xI
         VUWa8zMbFbv59KMvAOWI7e1v8El9pNMeMxplqnYphtdySNu3CJDj07FztNwB0frJhf3F
         5MgKX1HYSAdfDNZ4qynuimkiX6RczekV6MtbwPeAlrDwt3Xb3d3kPiOsgR8TuhSDFDSt
         +vdA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id m19-20020a05620a291300b0077d68ae63e2si9099276qkp.625.2023.11.27.01.38.38
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 01:38:38 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-687-P4sBw8-VOcmFmgtbkEpIbQ-1; Mon,
 27 Nov 2023 04:38:37 -0500
X-MC-Unique: P4sBw8-VOcmFmgtbkEpIbQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 77F443857B6A
	for <blinux-list@gapps.redhat.com>; Mon, 27 Nov 2023 09:38:37 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 7528C492BE9; Mon, 27 Nov 2023 09:38:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6EC08492BE7
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 09:38:37 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4A5D785CBF0
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 09:38:37 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-537-vkP5KthKOJCsz8kXqPAYnw-1; Mon,
 27 Nov 2023 04:38:35 -0500
X-MC-Unique: vkP5KthKOJCsz8kXqPAYnw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Sf0rq03mdz18p4;
	Mon, 27 Nov 2023 04:38:34 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Sf0rp6dQHzcbc; Mon, 27 Nov 2023 04:38:34 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Sf0rp6WvgzcbP;
	Mon, 27 Nov 2023 04:38:34 -0500 (EST)
Date: Mon, 27 Nov 2023 04:38:34 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Karl Wilbur <karl@karlwilbur.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: vlcrc file needed
In-Reply-To: <CAMuGJSn_KmcdKHy2tB8SziLkUi7odHwk0bL09ETt2oYx0SrnPQ@mail.gmail.com>
Message-ID: <8e1f047e-73aa-81dc-adb4-72653eac6d76@panix.com>
References: <433e1464-0c97-bd74-32bf-06ab48664fdf@panix.com> <CAMuGJS=qR4KKwsFrDNa3+tENTWHMZ3r1Z+zHc=AgGHTg0st5Mg@mail.gmail.com> <0ac79846-59e1-8efe-8444-7240592473ad@panix.com> <CAMuGJSn_KmcdKHy2tB8SziLkUi7odHwk0bL09ETt2oYx0SrnPQ@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 1
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

I tried git clone on that github.com url you sent and that didn't work.
However wget got the file for me.  Thanks for the assist, I needed to use
te correct download tool.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Mon, 27 Nov 2023, 'Karl Wilbur' via blinux-list@redhat.com wrote:

> I'm not sure what you mean about GitHub.
>
> The link that I gave you goes straight to a `vlcrc` file that has 3600
> lines of config option and comments that somewhat explain what the config
> option does, its datatype, as well as the default value. I just checked the
> link and it works.
>
> Now, it is old and the config option may have changed, but I think it's
> unlikely that it has changed much.
>
> --
> Karl Wilbur
> 513-322-2481
> karl@karlwilbur.net
>
> On Sun, Nov 26, 2023, 18:37 Jude DaShiell <jdashiel@panix.com> wrote:
>
> > The github site is gone no longer exists.
> > The incomplete documentation on vlcrc configuration location I have
> > already read.
> > If missing a vlcrc file how to get vlc to make you a basic vlcrc file that
> > could then be edited would be a nice thing to know since configuration
> > file format and valid contents isn't documented.  I'll try cvlc and see if
> > that works.
> >
> >
> > -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > defense of liberty: soap, ballot, jury, and ammo. Please use in that
> > order." Ed Howdershelt 1940.
> >
> > On Sun, 26 Nov 2023, 'Karl Wilbur' via blinux-list@redhat.com wrote:
> >
> > > This is pretty old but might be a good place to start:
> > > (a GitHub repo that has someone's `vlcrc` file in it)
> > > https://github.com/bashwork/settings/blob/master/linux/.config/vlc/vlcrc
> > >
> > > Also, VLC docs about config file location:
> > > http://www.videolan.org/support/faq.html#Config
> > >
> > > --
> > > Karl Wilbur
> > > 513-322-2481
> > > karl@karlwilbur.net
> > >
> > > On Sun, Nov 26, 2023, 07:36 Jude DaShiell <jdashiel@panix.com> wrote:
> > >
> > > > What's not on that videolan website is instructions for command line
> > users
> > > > giving format of vlcrc and valid items that can go in that vlcrc file.
> > > > I installed mpv and vlc on archlinux and have mpv working since it's
> > > > better documented but not the case with vlc.
> > > >
> > > >
> > > > -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > > > defense of liberty: soap, ballot, jury, and ammo. Please use in that
> > > > order." Ed Howdershelt 1940.
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google
> > Groups "
> > > > blinux-list@redhat.com" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send
> > an
> > > > email to blinux-list+unsubscribe@redhat.com.
> > > >
> > > >
> > >
> > >
> >
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

