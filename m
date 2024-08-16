Return-Path: <blinux-list+bncBDYPVTOXSQEBB54J7O2QMGQEGE5YL5A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com [209.85.219.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 58194954003
	for <lists+blinux-list@lfdr.de>; Fri, 16 Aug 2024 05:18:17 +0200 (CEST)
Received: by mail-yb1-f198.google.com with SMTP id 3f1490d57ef6-e0b3d35ccfbsf2266446276.3
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 20:18:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723778296; cv=pass;
        d=google.com; s=arc-20160816;
        b=pSUdYiy4i5F/l/wJEBLAIp8SOQS5b7QSfJ/G4dkumnCcNkOTUJ9KaKlynNGRb4u2GG
         w9p1E2eRDUWS/zDe1xytohnOqq3T+oRLszBuXHaMZIRt7vSIgaWpoBfpV/XdLv4ECUzI
         OEBYDjloXI/zL4Sqk+Or58PYL9LTV3eMeyUPLljFnzxT7lRRmUm+ejYOlkWyuSIuo1+g
         gl1enp6qdn/u1hn73eaje9e2b7U1yKMOv50AEf4Xjo5YIFPF7m2xjN7AGQjPHRPSwhDQ
         BMdLwqXom1ZPr/YKEhQOZ2ZugXXSNk+tTAszGC+qIdo6sn2JsOGdBRqiM8dUUSFqhEaJ
         ratg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to;
        bh=RztRjXR/hXj8mel4kN2iky4zLvdPv2EfGEVxNGr0K1U=;
        fh=AhCjBGvmbrzrq0TyzUGLVmf9GfmLM83MaIn5bayqKOE=;
        b=JGtiy6oJ1aD3JAKLelAc4gPJ+LeyiWo2kGU6XDCQ3UegAaYOElAm7/vutytuwhy4Nz
         S8sVYPft2VUZFS/G3qH+ku0ud/UkwQsquYaOS3zSCqRLrsTYaUTqG2zklnugMmcnnt5h
         GtAnyAQrZyMSp2iJhBG/cRtwiG/Afb8KeAA2lnXwPaTDk/ePQIwlFDqNzLM8Rn0sKh5F
         zz6L3miyev8bLdfKJYL0ogk8MTBTWW1tOhxclQywImU/mX5qzG0T80crbDbXZWm/9SKu
         erZEuCBPzszS7SKBUo+X70lnqvnkQHbKG3dbRapRzHkStzHJ4X0lYX5crnWow+5uAvIQ
         EIyA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723778296; x=1724383096;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RztRjXR/hXj8mel4kN2iky4zLvdPv2EfGEVxNGr0K1U=;
        b=pfG4vADlCwjO6PxhIOzHagKtJmG7w4rqqRAZfEfNxTrORN7VHeKbxucDicSxcgGtdL
         A6rpIM5o9xq915+5nSwdINBtI+Z0SMJI1qtprXmLPD2MrzO+aGLlsbSw0e1Ea3/GI/0N
         dF/lJAZbPsY/vwCTBnxIpj5yFvioFeun9TizIqHCPL5jNx83tnS2kAqZL5+CHFgrJ6kI
         0v8uCbgHjRbE1uFufKmNNRGbLz8DIncUOf8fmM1eGChqJv1aN5n6Z3g20oPgYVjtVLBe
         MWpxcMl63jKSXr5VwGUsECLPfmnpbR73gEMZ8iw7wDeHpRxf6HI5XTFuJFkIl3sXCIRY
         rahw==
X-Forwarded-Encrypted: i=2; AJvYcCWPEy9IczBtIkr0l5gNcfm1qSgt7CfubxP57qE2tRCWFVrbdZDg23FlB9XRuzPGehhm4SWTDs9UMeMMVmRJ/2/UasDqeG1LLuCA
X-Gm-Message-State: AOJu0Yw8jqBvFzoS/9YQkzBkpUTg8rDB8PwZsFWKw2EoQ79WNsDr/f5P
	M5mIy+mJ67IYaiMJjFZsF8ASUMnlz7BQck3WM/4+ZsKRuuKk0OxFtwpRj11lluA=
X-Google-Smtp-Source: AGHT+IGcM9JNnGxHtHNnyFrxMfBQD6rQ/RT0K/Zfx1CgQc3biD3PlbDiRu9n14iNmBTWlMUnSrS6rg==
X-Received: by 2002:a05:6902:919:b0:e0b:c653:b043 with SMTP id 3f1490d57ef6-e1180edfb97mr2178753276.21.1723778295752;
        Thu, 15 Aug 2024 20:18:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5708:0:b0:447:f1f3:5341 with SMTP id d75a77b69052e-45367462b3cls19981741cf.1.-pod-prod-03-us;
 Thu, 15 Aug 2024 20:18:14 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVzUkPefO1Ss0XwQ0TE/A1T9hm+pshnk9Uke00dGAmm8/7ndiU6iXFggqBOgTkbDv2NSktOw643tTanaRW3imM4qgOaabo2Db4Rtm35
X-Received: by 2002:a05:6122:2193:b0:4eb:39c9:c935 with SMTP id 71dfb90a1353d-4fc6ca08ff6mr1881370e0c.14.1723778294684;
        Thu, 15 Aug 2024 20:18:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723778294; cv=none;
        d=google.com; s=arc-20160816;
        b=dDhdUx45Iml28gweUnoJeFnV/wrNTjesHzrU6RM7wyqvcDHVi4M2Dwb83CRR9brLA+
         jUhVwgI9kbFOXoyJo94A1GVe6/d2E/+JO7CrGjbQY1RXEYux/qovllGLz2NleWDFEQ2M
         pfoNc5dZx41AxGpny6NB55JUBBRXK1on2pKIbIBkeF+B7Nfj5xmi/9aUyt0mhuG0WQVp
         6aOqejwYHE/uCy3gfLbhv6eVahFJgj+15ZZSpgmKpUBlkHgvxa0pt0hY9cgYVnKR/481
         CR6k+HMyacmufnskrPF7jk4JbtOtq4JeKhFdXYmpy9cnaR/juNFla7Eg9lu1ntBYG6Gh
         etEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=DTgcBysoNTg7Nii2ikZ7RG4zjPDgk/jT2KHrW8JH0CM=;
        fh=JVIDkDGcTAHQ5XvbHoQBCuwMHryMS5ZaOae3KzVvtjI=;
        b=QMbA/Z56vMq8NMPtvNmEi0aXiCgUl2h3sBZWTpqjj23XL7KwQcwBYIruvs/qMQe/6N
         6m/7FFv6yuJkQstP5toS5+Mh9bh/KhbqCGOYy0GxHs8YmhE71iS7XV7U3iwy+H4xOanj
         mKpJBkr5Y6CxAm6eVtjWlzniS/r961e+acha7ENIuuDhHaYN+NGD8YiWKraI8m2CEgOd
         K/shK/tA10EsTs2OdA7zspqJ3vcPVozqDADywMy+CACDndUnHcRECH4o9ddHujWaupsr
         YfI4ZyoNBTjnkqxFqnBgt5nzs4iG2OvVWr+gakwlgwgYnGpHaln0IgpgDVxARDyiqGy/
         PE9Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-4536a0035a3si32139751cf.187.2024.08.15.20.18.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 20:18:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-342-VqgOXrnxPFSq_A_qNNppVA-1; Thu,
 15 Aug 2024 23:18:13 -0400
X-MC-Unique: VqgOXrnxPFSq_A_qNNppVA-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 405F319560A2
	for <blinux-list@gapps.redhat.com>; Fri, 16 Aug 2024 03:18:12 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 3B301300070A; Fri, 16 Aug 2024 03:18:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3886B300019A
	for <blinux-list@redhat.com>; Fri, 16 Aug 2024 03:18:11 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A79DF1955BEE
	for <blinux-list@redhat.com>; Fri, 16 Aug 2024 03:18:11 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-643-gc_iGXGEOA2DgTM_RnrYRA-1; Thu,
 15 Aug 2024 23:18:09 -0400
X-MC-Unique: gc_iGXGEOA2DgTM_RnrYRA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WlRyS6q1qzFmr;
	Thu, 15 Aug 2024 23:18:08 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WlRyS6f9Rzcbc; Thu, 15 Aug 2024 23:18:08 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WlRyS6ZH3zcbC;
	Thu, 15 Aug 2024 23:18:08 -0400 (EDT)
Date: Thu, 15 Aug 2024 23:18:08 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Didier Spaier <didier@slint.fr>, 
    rodney jackson <jackson.rodney.1970@gmail.com>, blinux-list@redhat.com
Subject: Re: emmabuntus wifi
In-Reply-To: <7c18c2e5-9a5b-4ffe-ba0a-1ab33f51796f@slint.fr>
Message-ID: <3526dc72-a0e2-6d55-b3a8-b2d38939e301@panix.com>
References: <2f5ffe14-428d-85fa-3ddf-8d080b9c72af@panix.com> <93065d1c-c24b-4492-bc7c-a5a9ffe8096e@gmail.com> <e0bdaa40-6783-4634-91ff-42f3d1f072b4@gmx.it> <9b92c4ff-0e8f-3e9e-46fd-71d961e4ae49@panix.com> <846993f3-1c0b-4ae4-9ff2-e0107649c855@gmail.com>
 <460a6c10-5ece-23e7-abaa-8acbc346b07a@panix.com> <55ddac5c-5f1e-41d8-b0a0-04de9ba2eb5d@gmx.it> <80016b6e-f9ee-4649-bfc7-e3eaaf9094ff@slint.fr> <dfe37f43-4cff-4824-98a3-03db71574034@gmail.com> <7c18c2e5-9a5b-4ffe-ba0a-1ab33f51796f@slint.fr>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

To get to nmtui real fast on emmabuntus press super-alt-n.  Downarrow then
enter to activate a connection.  Then downarrow to desired ssid then
rightarrow to activate then enter.  After that key in password when
prompted then hit enter to connect.  The tower connects to this very weak
wifi network but a chromebook and a raspberry pi 400 cannot do it.  The
iphone connects as does a fire tablet and an android tablet and this is
all in the same location.
I found out earlier today after getting archlinux to connect that the ssid
has a space at its end.  I did that with:
iwlist scan|grep ssid


--=20
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Fri, 16 Aug 2024, Didier Spaier wrote:

> network-manager is installed so the graphical command nm-connection-edito=
r is
> available. The command line utilities nmcli and nmti are also available.
>
> To help setting up a wifi coonection I wrote (for Slint but it should app=
ly also
> to emmabuntus):
> https://slint.fr/en/HandBook.html#_network_configuration
>
> Caveat: I can't try as I run emmabuntus in a Qemu VM without wireless.
>
> Cheers,
> Didier
>
> Le 16/08/2024 =C3=A0 00:38, rodney jackson a =C3=A9crit=C2=A0:
> > now that i have it installed what would be the easiest way to connect t=
o the wifi?
> >
> > during the installation i had it connected by ethernet so i did not con=
nect to
> > wifi during installation.
> >
> > any help would be appreciated.
> >
> > Rodney
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

