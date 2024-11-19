Return-Path: <blinux-list+bncBCV3N6GOXMCRBZ6H6C4QMGQE4B22SKQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id BEECF9D1F9F
	for <lists+blinux-list@lfdr.de>; Tue, 19 Nov 2024 06:36:41 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4609c883bb6sf8865361cf.0
        for <lists+blinux-list@lfdr.de>; Mon, 18 Nov 2024 21:36:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731994600; cv=pass;
        d=google.com; s=arc-20240605;
        b=h8lPJ/bcxAtK3zcm/CL0Y2cnluyr73kmbI2LxJgEOQfu4G30y3Mt2fOc4/GSwJq0Ys
         x+uM/4TcBIMl/8PaCpC5nSc1gC9nP7oW/n1lyic42KDOHMBSUlZs6MGHsCAmKuN4Ecv9
         z2u9oPSa9lnWem0MEkYC/nilbS7dyBKpKQxEQDS4GibigJ9ZPVENl8mCsZDP/EH5e5//
         qkxQUm4dqmT+OBfEN2PrfVNgJ3XC/XtYSGjWIeqaSKDEmNGSdMpU3OjTtp2eD0El+QvL
         BhKK+LZAHGG9u7S20C+GAjsnXRMy7sZcxWJ3tNrXPJOmrOMvsIoY1TzlhVgTIhe+mSTt
         3duw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=4IzGBNzsl8TtjbfCN59xgpGIhzTjWeSqZoW/6C/VupA=;
        fh=7aCwVY+FLvNoBVOF9CX932JO9DO8Xso1QHOiDklOdtE=;
        b=YCj+GxtIYI3EJ6PWwpgWVYQP+qjS3iSKLE3dWvbn0y0ek7PrPAhmJRNOxIWyqimJz2
         E6ePhejnT+NoT4OTo8azuAbHPvUDd4+90wTBjpjDuDBIbYp+h/B6SklmVrSWTEkTdWH1
         sACoYCMofd5s3ZhEYR/tlem61VWhy4H25EPIaCesQIrk30groSl+tILty9w0CjOPH0if
         D2j3VMwbzz5frZ57lmUkj8SX0OSIB8kVJe/6g4oGoCjCoNsP0Bi8WYuwxzl8+vN7YU9E
         b5CsqZo5+NjsoNfcVcAAXlGX8Z43WeCn+M78RJbR4kp1CexyzXXFMPavCrufv4k9jrI2
         gcNw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731994600; x=1732599400;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4IzGBNzsl8TtjbfCN59xgpGIhzTjWeSqZoW/6C/VupA=;
        b=bIMtsTPSvpnggqglKUj0ffQZzttOA52QcR3bHcA+IbmWGiRHDhuGzm4Me7Rhs10+X9
         s0x2Oj+YApQ45GjeK/B6/DJ2lLWyC/1Hk9wFZKeFuUPOzQCSDBMmak9o8goyeIDuYkKg
         MC5lLTB6yyP+yZTJb6dlBh6V7gfGdE2S1lOh+euqRsnVRI2C3OIcdvHHAnGbghiMAaZi
         RRHPJ0JXMTvmTVIXjIelWl1X9bufRrUqOfvW217mJ5xXRi1zuoqjwNjyEYRTkLDNJ0SM
         O9us9fDCGPiHp0qTV3GIDO5ntJw56a1hixBjq7KV2yoEOWsFW7/Wgdj/r2s3Us8iCtgW
         Y5tA==
X-Forwarded-Encrypted: i=2; AJvYcCVOaHURqe0ga4xermxYVfNURDiykDBcz3qXjeOfoMTOL5gWEr85TBp/4YcSRgQEkumcCCg83A==@lfdr.de
X-Gm-Message-State: AOJu0YwHV7OcXVKODghz1NBu/ue2FJHRGAyWppLiDiXOTAKMYzsXu4mq
	9LK1LoRwfd3pUUtqBTufqglcQng3K2kyz0Eywdssfe+z7j85TTsclfbfaERFm3E=
X-Google-Smtp-Source: AGHT+IGvo50Foi5pT7cxeaZ4XyOgM+1R+sPM5JqeipeUVDssjSYIpyrMTvH6keMss+dlkpJ0s0EDCA==
X-Received: by 2002:a05:622a:1a1d:b0:462:fb51:7801 with SMTP id d75a77b69052e-46363e31038mr97776021cf.8.1731994600075;
        Mon, 18 Nov 2024 21:36:40 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7c52:0:b0:461:428c:d46f with SMTP id d75a77b69052e-463640f950fls31406711cf.1.-pod-prod-02-us;
 Mon, 18 Nov 2024 21:36:38 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX39vg3yPc6gUCdRq1bA8ydkaaCOYtL5fHmPe3MYCFC9OesusRzSjQ/Ekpuwqo7OrXUvUlcgP1ekvWg7Q==@gapps.redhat.com
X-Received: by 2002:ac8:5d55:0:b0:461:2897:1e0b with SMTP id d75a77b69052e-46363e97efcmr253691381cf.38.1731994598759;
        Mon, 18 Nov 2024 21:36:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731994598; cv=none;
        d=google.com; s=arc-20240605;
        b=gsa8NnIbHQmYBNw2TIlc90u+WdTUue16Ypk3rQ6jEtpZ9irlA578N3Y6aMYk1MdluQ
         63TdrR0Q9rEI96V8BpL690PW6GpECqgs3i3Pb9yW1vto3QTyGBvVdCXK8EcAzkHcF2g7
         Gs/jPM6s2tvhU+YAzCbyXKUFPJqEbefRb2YF3wHoyZUDVOn8gbGzEfV6KiqwObqEH2gA
         hpJyE77EWW7cOTCbBUSOqdDAJ8BGw8MIPzh6AOg9WLrHcFWYG+UxC3PugsvbZKp63bvI
         Q+Ibxm6+PZjWi5pfBla6rYXf89//PQTKl06ndgBNj+tvxWYtSSoQ+Y6qCK715c/dLadT
         neCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=rqjSdRX9IIn2azUHI6yhCsdQffBMVhGG6PNcz9QlGkU=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=kCjx48uzzM7WxFReHYKxYLe1y4DTHL1RY5grBxngqKiQmPwTyT3ZmaPRQ0Ti4fBAoP
         AhryIgIYDlXGpYGErOmSPRyi5Jw5EJ27/zWZmSTTVQK1yekHw3B4mLYn4+eMqSycGmD3
         lRzzx9HlCyO28Cw6AH/bzL90gN9l9QMcxX/aA+0bCv9EKxhKyJoH9IELE3N/GSQT6A0b
         BsGtaZ5ftNIQg7rL8V3lonoPlMBaBnSa6kZnUWFgqeCkgY7zuMo7HKBiBQ9EkMjvlETf
         L7aOxHI6lYd821XdmL8lRKAkWqxbSlhOanJng6OXIF9XocAb5Xli2QnbbblOCknruz2M
         EuyQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46392c767e1si16562301cf.670.2024.11.18.21.36.38
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 21:36:38 -0800 (PST)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) client-ip=212.227.15.18;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-341-9IKkoe6fNFCfb8RYVqubEw-1; Tue,
 19 Nov 2024 00:36:37 -0500
X-MC-Unique: 9IKkoe6fNFCfb8RYVqubEw-1
X-Mimecast-MFC-AGG-ID: 9IKkoe6fNFCfb8RYVqubEw
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 43B4E19560AD
	for <blinux-list@gapps.redhat.com>; Tue, 19 Nov 2024 05:36:36 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 3F0B7195607C; Tue, 19 Nov 2024 05:36:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3C4ED1956086
	for <blinux-list@redhat.com>; Tue, 19 Nov 2024 05:36:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9508A195608C
	for <blinux-list@redhat.com>; Tue, 19 Nov 2024 05:36:35 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-592-MHV4gLz_P9ewKNkGDjG5Tw-1; Tue,
 19 Nov 2024 00:36:32 -0500
X-MC-Unique: MHV4gLz_P9ewKNkGDjG5Tw-1
X-Mimecast-MFC-AGG-ID: MHV4gLz_P9ewKNkGDjG5Tw
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.47.142.229]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1N8XTv-1trKgS0uXJ-00v7zQ for
 <blinux-list@redhat.com>; Tue, 19 Nov 2024 06:31:29 +0100
Message-ID: <4a02e3e2-08e8-4643-9795-64c7ec99b752@gmx.it>
Date: Tue, 19 Nov 2024 00:31:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Piper as an option in Linux distributions?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <Pine.LNX.4.64.2411181752460.395171@users.shellworld.net>
 <1734eadc-f27b-2f63-67b8-1a5aab1170cd@hubert-humphrey.com>
 <Pine.LNX.4.64.2411182352010.398469@users.shellworld.net>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <Pine.LNX.4.64.2411182352010.398469@users.shellworld.net>
X-Provags-ID: V03:K1:03E5YyYXXEe+bpm1bB+TwLTv1dXzyBf4rQ+mbTCHi3Cf5nVaSyc
 Aahmmmn/QxMbfQHbKH5SSMm+f2OozFiyW12jQs4le2099fuypzpnmCywGjGAoCW9uqWfJ3U
 jeV2FW6Z/JFiSHMRJCjtiSP56Eq2nE+vRrkQ1PIl7EyAPe6BZv8W+ZTFYKAKxExl7Wo3zRI
 eRhcbOXl2uwop4FEkE2FA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:m4fmqOhcPa0=;V8y20xKQjbV/HbWYIHaYcdXjA3o
 B0ggUJAaMRX5PWQpkHhPRnXJh53DFXI1meY95b4eF2ga5/mtneoetYmwMcIPrYr9SgMNJzRQz
 YFJH4EUQQQ8QhtRDI4p/S+3YUSVtMzmLXm1XDlDaNFxDNYzy/tiQ3HRWYf+IDuQ1zZFWsKEgo
 vpJg20Bh9orJhfAGzeB3j0x8DTmGLhQft8X4gpfBm6VIru0LX9R/Hap5xYYffEXZlrSXrFD3h
 n2GJ1vzXPN+vF8V5E9Zvp/y7sE5EFQ81BnsRsIENGpo+I6PmcGwewN1PXNzTcT6P7EDDhUksM
 12DUKdRwPKGfYlrp4uhXLpBc0Y33cBcoaqQaQxKixlkWIfn21ZBqoqKPUOyfKSTIkIkZa/Zqe
 J4QkDejzj1NrUmPiSqhHrCJyH+ianmsmW2fezyqXrw08qJSJRMg+HYRzd53zXY5MPC3iUNSnt
 IG9s+aCzVuLVoey9G/7EcfXMVYA1CL5Up4uxlIVxS/Oq0VFbCsB1WtEfzctvcAGah/EziISPw
 j1VKS8dsL5tiEbZqZl2vUiZq5E/0XuXEiBZ5YpgQMubtAJWiHy6IdmP4/Bvh4/Z922XnaS+5I
 vo437OmmjWsGzAbOPAvGKGsHEtM1um/2ktGRJoLS98St0JC4TND2jcco8VGVTYfjbjk3iBAbL
 BQ2vK9+QvB8HEVopmfZh9cMXNPD0jFjBZsnfEA5T7z2+tAHzEndZ0vtJizJqaZ8/Oxx3CjNJM
 cVvWoCepKYmsjSho+8JirI8qURjoLBQkudr5aBxk/Z7Q2c+kqS8PtR813iAOqFgzc6PsFwww6
 7U2rPsTcECMCJeAXFZk3zEZETjew2FIo4GkUeqwuRbn2SVSJtC0q7sfwtFPkiag4a+M1/n4vy
 lB5MGYF2D9a3EB3H46SHOWyqzmEPqx6XUyBWKGWak1jfcdHc26gs1yRYH
X-Mimecast-MFC-PROC-ID: KSjiTS5X7F6IWHAag-6KHaBNYOpe9BpM07afppucT8A_1731994591
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: pCHrbdD4cymJiSxBFepHoOJL87FEU6YOWByAT1w3siw_1731994596
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

I know of Pied and got it working here, but it assumes that the screen
reader can talk through speech-dispatcher directly. What's more, it has
a graphical interface, so choosing a voice wouldn't be as easy as a
command. That said, if you can drop in a configuration file, it just may
work without the graphical interface, although I don't have one to send
along at this time, as I found it to be a bit funky with random letters
and sometimes numbers. Even some words made it mumble at times, so I had
to revert to DECTalk. Now if you don't mind RHVoice, it works with
speech-dispatcher as well, in fact it ships with its own
speech-dispatcher module. In either case, though it may not work with
speakup, either RHVoice or Piper will in fact work with both TDSR and
Fenrir in text mode, as well as Orca in graphical desktop mode.


So someone got Provox talking with software speech in FreeDOS? I need to
find out more about this. Gives me something else to play with over here.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

