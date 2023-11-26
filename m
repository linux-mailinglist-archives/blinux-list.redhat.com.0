Return-Path: <blinux-list+bncBDYPVTOXSQEBBA5KR6VQMGQEUL5X3FY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 8465C7F9684
	for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 00:30:13 +0100 (CET)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-1f9e2d92cd7sf4154318fac.0
        for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 15:30:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701041412; cv=pass;
        d=google.com; s=arc-20160816;
        b=u/oXcsjVLcI3rQMaZgjUiphMIkyRPMOJufucxtAox4Gi4MKfnkDQdKDaCAmxzHegXI
         MLyIS3hAgl3v7Hu5z0tU4CO2LCsYFQdkWUIyJjnyo9TqrLkLLZlgE3sffU3IuLWjX8Y3
         qGuEGQREb+Q8TBnKRHNYndpSD1KVBSg2quSwspA3Y3VuodFvPqIWan6Ze+SkMxp6Lq0K
         g+5rPuF0YQ+rZi6ucuwtMpyzBKDaaioPVnKGz2K/6vHSnLrKs+v+v3JgAPLa6OI1pf6R
         aslZfAI9wbDDH3OxmCRrpq0ifZJW5KC6WD+Z9sir3wGjBHiS5Y239RedutvtkTt2qZtt
         x+SQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=iuZ2rs5AgYUgyJHr541DismUC1IzxPL8iCzCjGqnbo8=;
        fh=dhZ+PU+EbN3sWMMTWeiK7THfWDmeVmv2WnEI+ph4A3M=;
        b=s9BnWySiVXvVUBEirxPmCpgtkh5P/24xvSYQqhHkN26G09W6YAwwnqrDSDaQFu7vCl
         xIi/DRRhLn5Zvcs4I12I64EEDCdqGr2elbxXS2Ej1kW0PxOukONGO1BzIMX9+XO1osfy
         J8RcvF7gEtwa5kJcb5lOdZtWljzsj4Lqc7kUJmWMUy+kSp/suJGmz0vZE6jE/5yV7RJe
         Pd+B6NmnX3ADVFJoH189cKsid5QPr7o8aIQlqhKyN2fdfUO4sGzyIvL/TcFAHSQQ3Lbm
         kj33IOhsoXm44qxfEoEgXB6hKyaZLanmnDizPQozXOXoJ1yMDZjQgH2XPK/0RA8ECQca
         stCg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701041412; x=1701646212;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iuZ2rs5AgYUgyJHr541DismUC1IzxPL8iCzCjGqnbo8=;
        b=UoILzD6TAzBAu0F/GsE3C1AKKXZ9MdgO8OoND7qlUQ1AGtGDO6MgXIeyIQn53cQAH+
         s7ygT7AKkevr0kjyTH4kDM3nZL5OpW8t192hC1H8ck0tyVfAGxMcEGYsq3F5fWaSbfMQ
         w+8qTTzNMBvQPeUMMqqQbTz0ZEDbiMqbaoqSh0wVdMe4hag2sxl47Zmn8q0iR1G6pQkZ
         o15buiUZIkcrl3rRDAQO/GCzrk9MPaGGZGsabWj7S5tUwpY/CXcs0qV8eWJdjUX8RH89
         VQvYpCRb3lh/L4Rb1x15NlgLV12nl+DbfuU49WyGykw3zO31dFccyMvsbUtxRP3uUUCV
         e0RA==
X-Gm-Message-State: AOJu0YywTovzIbCHmDIC4TNFKXnRdliPDX+e1324BerK+lLNdxzi9inm
	w0Vun1jfr7l3GongsofKc55ilQ==
X-Google-Smtp-Source: AGHT+IFcpni0d5KpkKbCK5/Hlej9mpUjYOymtO8p18uHQeaH1ONUqifkEl3RDhXQIa6ishNM2VFAQA==
X-Received: by 2002:a05:6870:5490:b0:1fa:2fbc:5906 with SMTP id f16-20020a056870549000b001fa2fbc5906mr5641043oan.42.1701041412270;
        Sun, 26 Nov 2023 15:30:12 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:17cc:b0:423:a0d4:8c4a with SMTP id
 u12-20020a05622a17cc00b00423a0d48c4als2413921qtk.0.-pod-prod-03-us; Sun, 26
 Nov 2023 15:30:11 -0800 (PST)
X-Received: by 2002:a05:622a:1c12:b0:423:a3d9:2a37 with SMTP id bq18-20020a05622a1c1200b00423a3d92a37mr6779448qtb.65.1701041411003;
        Sun, 26 Nov 2023 15:30:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701041410; cv=none;
        d=google.com; s=arc-20160816;
        b=OKyHpYPgAIGlUrmEwFQOx4csjeMyyfzzSc6JzEawn0uIJkJDfRXNwdAc2h5fwiJJHf
         U/6a+5BVE9v9GsamQRwsztDLnnCm5yWtpE8eaIOFXvvU5KmnQAMY10RBgy/UQHdXhHnY
         OU8yt93k99gV4Ucugjm3dSS5Kk4kocKAkSpb7VFzFvHLtsLw2LXC2ON/DrthDNZ8WwLA
         amVwnXcMP6SFBf722iuWCcJB8JpHdc4yvQopNAJHpyz2jDVy+UpZUPY2K05/wga7zod0
         9aBDr4A8pOLVBH4Ry+lfN6nM7gF6vhybc4cnMFwuzdSseXWtijKE9A3MHN+6/8tzmwXT
         hsiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=24hvhNTtqaDbc1Mw55rBAd/fapc6PMCLDS1GgfSEAZI=;
        fh=dhZ+PU+EbN3sWMMTWeiK7THfWDmeVmv2WnEI+ph4A3M=;
        b=sZeE2WcrXTQ4iwctwS2R+plstgG1MX2TH85Ycj7bO7h84HXhJG4/1EXTiNEaB8cJMB
         1ByrAJIKIdt7/AeJfZfst3ofAPRh5nR30qDsuxF/AbgpZe9k36fCYS2xsMNvnuwB+SVh
         GG6OOvE9x8F4+wBD1jaH6QIr6iJBNGXsBVLfAQj1SliH3cxOAaDtyL+hIynqive9XdnF
         5i1GgczaH1HXFtr41R0SO6pGlZkjMkTGykSReEa0zCzSaxA/QWhKmsd9X91wXsgo4Wkz
         GnfHjkaRDmsWTN1k73kwjqqifDsJlTQm1Olk4HzYEI0DXoHVu78SdhMVUVmt7DlA9f0S
         +B6Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id d19-20020a05622a101300b0042385a894dfsi8152814qte.336.2023.11.26.15.30.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 15:30:10 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-249-TQgvo3xoMlutzjN3zJt2Ow-1; Sun, 26 Nov 2023 18:30:09 -0500
X-MC-Unique: TQgvo3xoMlutzjN3zJt2Ow-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6CC5C185A780
	for <blinux-list@gapps.redhat.com>; Sun, 26 Nov 2023 23:30:09 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 6967140C6EBB; Sun, 26 Nov 2023 23:30:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 619E740C6EB9
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 23:30:09 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 453FB38062AB
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 23:30:09 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-308-Rk07pnCyMvixjY_ypg036w-1; Sun,
 26 Nov 2023 18:30:07 -0500
X-MC-Unique: Rk07pnCyMvixjY_ypg036w-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SdlLk480zzqp9;
	Sun, 26 Nov 2023 18:30:06 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SdlLk3w64zcbc; Sun, 26 Nov 2023 18:30:06 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SdlLk3rM3zcbP;
	Sun, 26 Nov 2023 18:30:06 -0500 (EST)
Date: Sun, 26 Nov 2023 18:30:06 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Chime Hart <chime@hubert-humphrey.com>
cc: blinux-list@redhat.com
Subject: Re: vlcrc file needed
In-Reply-To: <e9da92e4-e9e8-0b40-fa2d-f87c7952ca90@hubert-humphrey.com>
Message-ID: <62324958-4a4b-9c5f-3b1f-96962b90ee76@panix.com>
References: <433e1464-0c97-bd74-32bf-06ab48664fdf@panix.com> <e9da92e4-e9e8-0b40-fa2d-f87c7952ca90@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
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

Thanks, I'll try that.  Usually I play rvlc with an alias but that isn't
playing now either.  I think vlc is at the point it doesn't know what to
use to play sound.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Sun, 26 Nov 2023, Chime Hart wrote:

> Well Jude, while vlc certainly works, why not try "cvlc"? 1 really nasty with
> vlc is if you play an mp3 which has art work. It can take over your keyboard
> to where you would need to login remotely-and-kill a process or wait til the
> file finishes.
> Chime
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

