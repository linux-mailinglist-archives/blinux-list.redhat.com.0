Return-Path: <blinux-list+bncBCD3RKH4ZIBBBMVVWGYQMGQESZ55KSA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id D64798B4398
	for <lists+blinux-list@lfdr.de>; Sat, 27 Apr 2024 03:53:56 +0200 (CEST)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5aa18a128c6sf4060484eaf.3
        for <lists+blinux-list@lfdr.de>; Fri, 26 Apr 2024 18:53:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714182835; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jyuks/zngMihErSSdeJ7bCIwWeTRrYUFWpmLXvoTaKRFpj843iZh74i46FxfLF6QAn
         jYXpQJ79qbogQbcutoKPvywVP0c6N97oMuHPd69OLwL4hyjYslGLKABdk/9EVwRbmGlF
         5xnlBicEuOb6S7Fk9B1P8Dt8WbO65ogIhJK+gY2v3WTetQ/ujQbS5qkpv8uckbglD8cK
         rON47KTBz3zSMBA4LuwZ11RY35kRygVhEirthxn9hsx8pkt2UvqgcTCugP1Wag2Zt3Cx
         osFsSbWXiVeRGHiekVOWvijwrVZC5sENeQjQov5MBGViivYVK0eG/LScBfGt189HJWsX
         MWBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=KHYLJCotxV6NfANYgl3OMTTtTgNE9fnTG2CFNlBzUQM=;
        fh=Jo2CDUwKeoy8HXzAsexWjtZjPqDvwjaABRGMeUYqjsI=;
        b=Txf/YQsNpzhD2gRFc0WwEumOEy4glCLATI9cWagnlyv4SM14d17qZUFQg2qFe2CSes
         I9tv/4ELDY9tEWbaE3U4ONI3bZuou0ddQZbArnWSTzwTeb6erSGWerjKdX7GuGgu2xJr
         4IgntIqtAB4JsWSibzmQG8vtAcm1S3uyy7vIhfQGiusv8KAhBx9yc8JmvnrUIlk/c6nl
         nh0WOa+V+zTYp97Q2VCJyaebZwgK/Fyk5eYxG5SmEHkcbL7vpuiuC0nkimXNOkmKDfmQ
         t7fgTAa1FSyPszSj3QGOZxQojciJnG+dRHcG4brG4BjY8ayJ9x9MS4iqvofHyyniDwVl
         5+4A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.43 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714182835; x=1714787635;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KHYLJCotxV6NfANYgl3OMTTtTgNE9fnTG2CFNlBzUQM=;
        b=VoSZ/0Y9EKghzvh+evJPJdaKRht83msSiYScR3eG+68nsVET33pBasZ+jK5NAWOqEq
         AtW+m+rXFM5qATqM3vqZaOO1g95h5RzjozDQcqJbGaOxw2Enj+xnGDv2FD94ZKXS4KHY
         aThrcI1cYVf2gipRVVsnruQdT9fPqZPtxBL1BbHCe6uB6o/M5yf5VmRAWyP6hXEGOESP
         qh/JVWeIXIsi4sPlR8h5qjrOqgxCRBX4f/jxJXwvzVYPA3Orr0ua4TdHMWCJh3JnPIIj
         8pIxqHO6sdKCcxA80bCfGmKFYs/A21k4Vu1CKqBpEPFaBFQJajEaOFQ8mEPL5NMySZtP
         Dc4A==
X-Forwarded-Encrypted: i=2; AJvYcCX/699YGVaTPSxE7cAhOJyEgn9hKKW04PamxeNb2659iMOVDQ1HAWNS2sPD5sDHOem0qvFgQ+zPpRjNLm7emQ0WwhXyK/Kcfp0V
X-Gm-Message-State: AOJu0YyBQJSH8YBomkCWhi1gM4ITysrqitDa/sI6G4lRKEJe8FYVqVd/
	KSslpuiiKcOoBd+YOAIzlGMPRLyHyvLDpj5GFK5IUnohFohAfVixNAHg1M16tvo=
X-Google-Smtp-Source: AGHT+IGp8S8e7UUxPL4Dvlt/YHSO5Q5xAKVcVMoH2XIAPP/FxC9Yd9ZCuWZuvCP/Wv/1VnaEjdfiTQ==
X-Received: by 2002:a05:6358:5914:b0:189:8088:9e5f with SMTP id g20-20020a056358591400b0018980889e5fmr1562844rwf.3.1714182835385;
        Fri, 26 Apr 2024 18:53:55 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1c0b:b0:6a0:6ff5:70d4 with SMTP id
 6a1803df08f44-6a09c61d125ls6863196d6.1.-pod-prod-01-us; Fri, 26 Apr 2024
 18:53:54 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWuhvqqp1xHhRTOH8CgLRAOJd/+ioVjAZzZqvNneV9DO/h1YWRmNIZqT5vZM53G4zicV1PpBcl3HlECNS8Jyab60Y4BK4hcljmKN0NT
X-Received: by 2002:a0c:eb0e:0:b0:6a0:bc42:5209 with SMTP id j14-20020a0ceb0e000000b006a0bc425209mr294964qvp.26.1714182834349;
        Fri, 26 Apr 2024 18:53:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714182834; cv=none;
        d=google.com; s=arc-20160816;
        b=D2y6IJQ8iFr49UdAQTaM9sOH9F7QirW+VkT5TO6PeW13tdZap9Gi5y78oneGpqPnMU
         lyquJPWMTBVcs02Dqe3rscJFPX0GZSyLKhbki5QXnSHTv8c8tfkbIXGE0+P7/fvMnrfh
         52nbxiODOAWGUR9+/nsFN10imHuWIWYrUzC3MumZW11LiH1FSa0KqAsNe+JYxzx28ErD
         QvaW2pkCPquJ/ghD3fIwCZ06yfJvTGm7bp5MXUSMC9A8p20ld2HuN9M5LJ18hFOh70WZ
         aqNKhTY74ImtVlyZoUSn+87fOelqyPSAbP+pRL7VJyuKJIyQeHWQFattZcuvoNWmfaSY
         lxGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=jwwVlNcxGmsFdHhUDjxf9IgiaBR5MRCsafCO3kdWmJQ=;
        fh=UXGfrFQtuGTZUrD4iEOqVHdbT0zJiIRqfY5TAI1PUDQ=;
        b=G+5savL3PdnBCo1aw9YHmX+Jpz1uOHyCOX5Mb0Tsth4aFy4QqpX35CO6meHSkIzN4g
         laVwm0pmbeSFTjxYGWO9Nd3aVkLl+hzcHgJrddBoatFaM4O6iBdQs52n8kYbhVU0YLmC
         S/lMB8eZ2fbQfWPPA4NwUQrq2bgyTFJLUEfOwIrK/4Y44/pGKw6KYux5VxgtO2I/zlC2
         E5U7nsAAbwm4UUqxJxamoeuaYj7r9SJp4JYDUoEHW+umtlWFrp6Tor1TagRLx3WcfLpY
         wLA55tlWwjmRjNNJ8CC14opbVuJldfaJ4Ae3QCSHn2MMGuhMfWZT/gAoeHAsd4ojoxkg
         1SxQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.43 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id a2-20020a056214062200b006a0b1fd79b4si2280878qvx.283.2024.04.26.18.53.54
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 18:53:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.43 as permitted sender) client-ip=209.85.218.43;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-592-idGPJolMOJ2b3hIvEPtwdA-1; Fri, 26 Apr 2024 21:53:52 -0400
X-MC-Unique: idGPJolMOJ2b3hIvEPtwdA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 315CF18065B1
	for <blinux-list@gapps.redhat.com>; Sat, 27 Apr 2024 01:53:52 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 2E0C3AC6A; Sat, 27 Apr 2024 01:53:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E7EDAAC68
	for <blinux-list@redhat.com>; Sat, 27 Apr 2024 01:53:50 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1993029AA3BD
	for <blinux-list@redhat.com>; Sat, 27 Apr 2024 01:53:50 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-68-OU1D9Xg0OriyG-iDNk0xMA-1; Fri, 26 Apr 2024 21:53:47 -0400
X-MC-Unique: OU1D9Xg0OriyG-iDNk0xMA-1
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a58c09e2187so258215166b.3
        for <blinux-list@redhat.com>; Fri, 26 Apr 2024 18:53:47 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUuI6SpeiZrIeA3C+FRXeL55EHx7z7wH0jrpXyj0nM1XTOqbXVTXrzp4qZ9xwG6ZUHvWxndujvyLRCd4cSFN8IwHQ60IYl0
X-Received: by 2002:a17:906:6815:b0:a58:a7db:c294 with SMTP id
 k21-20020a170906681500b00a58a7dbc294mr2732878ejr.35.1714182825877; Fri, 26
 Apr 2024 18:53:45 -0700 (PDT)
MIME-Version: 1.0
References: <7F1BA135-FC08-4486-9461-F6E6DDCFD207@gmail.com> <af4574db-805e-5466-6ba9-b2a912ed83d0@panix.com>
In-Reply-To: <af4574db-805e-5466-6ba9-b2a912ed83d0@panix.com>
From: Jeffery Mewtamer <mewtamer@gmail.com>
Date: Sat, 27 Apr 2024 01:54:15 +0000
Message-ID: <CAO2sX31M1=4kCfAPwZ02+vcpW1yXfYyU35fAiYmcNfCuJSrrww@mail.gmail.com>
Subject: Re: folder containing orca
To: Jude DaShiell <jdashiel@panix.com>
Cc: Daniel Crone <dcrone215@gmail.com>, 
	Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="0000000000006aaa9306170a4aef"
X-Original-Sender: mewtamer@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mewtamer@gmail.com designates 209.85.218.43 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
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

--0000000000006aaa9306170a4aef
Content-Type: text/plain; charset="UTF-8"

Potentially useful, but under debian, and presumably it's many
derivatives(Ubuntu, Mint, Knoppix, Devuan, etc.), the folder

/var/lib/dpkg/info

Contains many .list files, one for every package installed on the system
via apt or dpkg. These are plain text files that include the paths to every
file that was installed when that package was installed.

That directory also includes several .confiles files, which lists system
configuration files for a given package(I believe these are the files left
behind when you uninstall a package without purging hte config files).

If you're using a distro that uses something other than apt/dpkg for
managing installed packages, I have no idea where equivalent information
might be stored. That said, stand alone binaries are usually stored in
/bin, /sbin, /usr/bin or /usr/sbin with libaries stored in /lib or /usr/lib
and data files in /usr/share and system config files in /etc.

Of course, edit files at your own risk. All of the above mentioned
directories are read-only without sudo/root privileges for a reason.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--0000000000006aaa9306170a4aef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Potentially useful, but under debian, and presumably =
it&#39;s many derivatives(Ubuntu, Mint, Knoppix, Devuan, etc.), the folder<=
/div><div><br></div><div>/var/lib/dpkg/info</div><div><br></div><div>Contai=
ns many .list files, one for every package installed on the system via apt =
or dpkg. These are plain text files that include the paths to every file th=
at was installed when that package was installed.</div><div><br></div><div>=
That directory also includes several .confiles files, which lists system co=
nfiguration files for a given package(I believe these are the files left be=
hind when you uninstall a package without purging hte config files).</div><=
div><br></div><div>If you&#39;re using a distro that uses something other t=
han apt/dpkg for managing installed packages, I have no idea where equivale=
nt information might be stored. That said, stand alone binaries are usually=
 stored in /bin, /sbin, /usr/bin or /usr/sbin with libaries stored in /lib =
or /usr/lib and data files in /usr/share and system config files in /etc.</=
div><div><br></div><div>Of course, edit files at your own risk. All of the =
above mentioned directories are read-only without sudo/root privileges for =
a reason.<br></div></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--0000000000006aaa9306170a4aef--

