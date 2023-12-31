Return-Path: <blinux-list+bncBDYPVTOXSQEBBOPOY6WAMGQEC6K6UAY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 514528210F6
	for <lists+blinux-list@lfdr.de>; Mon,  1 Jan 2024 00:20:27 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-67ef8bbfe89sf169605876d6.0
        for <lists+blinux-list@lfdr.de>; Sun, 31 Dec 2023 15:20:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1704064826; cv=pass;
        d=google.com; s=arc-20160816;
        b=04Qa4TmdPkUq6+owI1xtgcIdbjjWC0O15tQtrI2pg4Knpe3zVjL4RKlNThRarrhrAj
         iW0z7wTmHRu/ta4HL6vYXQZ4qcynhtrBs59W+OALN6cj6PbomLhxTXXGdPLz5lh7ZKjF
         wjOAzWst27KXCtKMgXVxA+BLzoWI7GjlFguCn+Qs6gchujLquhUL/kXSYYQh385Tlmwb
         nuDLeDw+Z97rWrFl8OFt1/3Wxue5ekZgMNjdssNtGczycIBXGUZi6vywbMY6dDRGhQFy
         JVFvCqNvi55BXym3FXXi1anfuqUJOGug8Iv/DO8SEVxI8ASvSIbV4R/Vl8iyzOTwostA
         GMTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to;
        bh=99+amiWmabaUOhSLiVyu3uiWmkYn+mUmuLzWrztsExM=;
        fh=bUWW1R1V4Oa4f6njeRZrKqBiOU2zKO5LVIe4RDhFmeU=;
        b=c4ceRawoSiGG9bZb2Y8LSrXWtQo2Whsl8kP7ZSjeOoppbJHLR128QOXt/LOINqlqEZ
         jbZYWMK+pYX4kOtws6Q1Qksf9sx7VjsCojw87U22/j6bUXzMd+hUMyO181w1+4xBWRZe
         9z6TaQmvoKVAb7QwrBiofeNeEIqc6297V7ALT2GCy6WEEkx7dM9If8ZgN/9zIwTdF78I
         LtGxYfvW9H8w25H1MhllElZvc3DZNum4IQtt0mejMbUuTJsStng2h+qTsuFgY+cswpKS
         x/Yz+PKhfrnN2MLACIHPFlIWCb50l8DwpdRIEoCeWsNDBxtWcYnOFZ/mFlVvLrDHTTg3
         i66w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704064826; x=1704669626;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=99+amiWmabaUOhSLiVyu3uiWmkYn+mUmuLzWrztsExM=;
        b=QfUwP/1ybTMaR/CXsTKVQf1LNvHm/10def95xYqkYzhacuPqiNM1TY73RR6QhD0XfH
         ivUITRF0feWf5cfi5BF1NTUpDb/a4WVDC2DE3otrjwuQfVR38Zs3NXmmnf25px/qFAdx
         VYzVW8pLcPx4iUMoCjmVeXpxl72ask2eVePntD8YhDzJKAFanhgaXlPHBMnI8AYwIsuh
         amDo0rg4CjAZo92KH4haXezbXLWxgD6XwMSTzgTXh2B2AiWv1Qa0L+GkcJTE25LVBMdL
         XroCs5c6zLSaZ+vyJ3Cp2c25xRBKKyXc65PG69uAoGl4PtbxOn9XO3xDtKfZ9Y/ipy7C
         7C1A==
X-Gm-Message-State: AOJu0Yx8Y5IE52F16RhKteM5bdZIAUIwzNEa82aGnK1m0PiYjBBerlkN
	5wPGlJAfW0ugcOzSl6S6wHdFMA/Z6g/kOg==
X-Google-Smtp-Source: AGHT+IEJEyH2LED4DGFDoQKroT2/+ua9619Tla4xqP8kFVSZvK/hE2xK/Rtorfc/GWPSuZEZVCifiA==
X-Received: by 2002:ad4:5be3:0:b0:67f:1a6e:ce06 with SMTP id k3-20020ad45be3000000b0067f1a6ece06mr25341510qvc.68.1704064825986;
        Sun, 31 Dec 2023 15:20:25 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1bc9:b0:67a:b34a:6626 with SMTP id
 m9-20020a0562141bc900b0067ab34a6626ls719839qvc.0.-pod-prod-05-us; Sun, 31 Dec
 2023 15:20:25 -0800 (PST)
X-Received: by 2002:a05:6214:628:b0:680:b7fd:e3c0 with SMTP id a8-20020a056214062800b00680b7fde3c0mr66476qvx.130.1704064825164;
        Sun, 31 Dec 2023 15:20:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1704064825; cv=none;
        d=google.com; s=arc-20160816;
        b=rAQI6e+xrwEqrOXP/Zl7KZ2y6AGx6FJMFoAbKCJxqV3+m4VhnKwH9H/v3BgVIjG34J
         60Uao0I/aZ8QEBsgtRgyivb6G8OxsLYfas+TV+OsPw0JB5e+Na++OksMRAK5iEX8W5hX
         M2hsJPm5LdNNxTp3j9N2sdHf+VVBhNgh8u9UQyy9jOv/SM28MH+cfo5e6CLRqQ4NWGR+
         6TFLuFDycAOedwjSPhJR/c4Bv85bgBVVfEqKwMDmDR3+pheiLsy9ML6ArjoYy4GTBdRr
         cH3x8lh+zORd4VWOBbuddyiHKjt8EBDY9f8/7MiqtnyNbjuHFE/Wp2+VUxus+++nuklw
         usXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=Pgo3Kk8tv38gqdOrAnkE8G0H5LvTsJg88YmxjlMVjSM=;
        fh=bUWW1R1V4Oa4f6njeRZrKqBiOU2zKO5LVIe4RDhFmeU=;
        b=O8g8F6TTJlJ9Z1P2Ax4d0ZJLzz69KsgbY7f2amrjyhxVzrW00xWYE3SFuKmdBqpB8I
         X+I1QjCe7s+EeyJRcgrwQg0agD5YM9R72sX2vfqEjOoBmapwFXT70QcjSca3f/y70yvb
         /auN3gMujkUDgaDRaquLTcVnzGuPgtlm2Bim5abCAK8dmdajAm+dXH9YCpMuSE9pp4UZ
         R3bgD9oDiklDN1roetVLYC8IQo9IEO2JtP6HUVgch0FHZYRojydj+cASTD0ugnd2eHtC
         0Z2q1a9Aw5yncOH5i3UywSbCIcvvt8KvKM8cJVb6pyyc7vJeZHTmL3XcUAWEcYYotoFV
         JbGQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id a2-20020a0ce342000000b0067f9605db69si21661186qvm.562.2023.12.31.15.20.24
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Dec 2023 15:20:25 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-232-JZ2avCpTNlK6P6yb0qJ6bQ-1; Sun,
 31 Dec 2023 18:20:23 -0500
X-MC-Unique: JZ2avCpTNlK6P6yb0qJ6bQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3F6BF3C000B4
	for <blinux-list@gapps.redhat.com>; Sun, 31 Dec 2023 23:20:23 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3C2E01121312; Sun, 31 Dec 2023 23:20:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 34FA81121306
	for <blinux-list@redhat.com>; Sun, 31 Dec 2023 23:20:23 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 13ED085A589
	for <blinux-list@redhat.com>; Sun, 31 Dec 2023 23:20:23 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-271-sX-NrKApNHadvGnh6vEHQQ-1; Sun,
 31 Dec 2023 18:20:20 -0500
X-MC-Unique: sX-NrKApNHadvGnh6vEHQQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4T3FTJ30Y8zDCW;
	Sun, 31 Dec 2023 18:20:20 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4T3FTJ2dqNzcbf; Sun, 31 Dec 2023 18:20:20 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4T3FTJ2WYGzcbP;
	Sun, 31 Dec 2023 18:20:20 -0500 (EST)
Date: Sun, 31 Dec 2023 18:20:20 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: stormux@groups.io, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: [stormux] Arch crash upgrade
In-Reply-To: <ba666dd4-3459-46f0-a29a-a1c087fba3e2@seznam.cz>
Message-ID: <3d6b98a6-12f9-a2e4-71a0-ad1d5f1ca6f6@panix.com>
References: <ba666dd4-3459-46f0-a29a-a1c087fba3e2@seznam.cz>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
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

If you haven't already got it, install the downgrade package from the aur
repository then run downgrade mesa and back out to the older version on
your machine before this upgrade.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Sun, 31 Dec 2023, Vojt=C4=9Bch =C5=A1miro wrote:

> Hello all,
>
> in Stormux and Arch for Intel machines, there was new upgrade.
> iputils-20231222-2
> mesa-1:23.3.2-1
>
> After upgrading these packages, it isn't possible to run Mate, only conso=
le.
> Please is some way to repair it? In Intel arch Mate works, in Stormux not=
.
>
> Thanks a lot.
>
> Best regards
>
> Vojta.
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Groups.io Links: You receive all messages sent to this group.
> View/Reply Online (#2371): https://groups.io/g/stormux/message/2371
> Mute This Topic: https://groups.io/mt/103454451/11102
> -=3D-=3D-
> Donations: https://ko-fi.com/stormux
> Images: https://stormux.org/downloads
> Repository: https://gitlab.com/stormux/stormux
> Website: https://stormux.org
> -=3D-=3D-
> Group Owner: stormux+owner@groups.io
> Unsubscribe: https://groups.io/g/stormux/leave/9747028/11102/784292745/xy=
zzy
> [jdashiel@panix.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

