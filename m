Return-Path: <blinux-list+bncBCVPTHE7K4IJVVMBXQDBUBBOIGCHG@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FA3A0840D
	for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 01:32:28 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-467a437e5fesf3772881cf.0
        for <lists+blinux-list@lfdr.de>; Thu, 09 Jan 2025 16:32:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736469148; cv=pass;
        d=google.com; s=arc-20240605;
        b=kOhXFCFhSF6g+ZPD9tNRkZoOQ8GnyIHdtmK7DThNISFr8WJb5Z10qIev0Gl+XMd5R4
         A5qubbvx+jzrkMai8PyufRKyk8NAYLgHGVzjIhXFXeCzfMhsKTbAZQFyX4AcuA7veeTe
         vBxXD/NlWtVU9TDf+HV48aWrMg7shWKmp7d/A3p8J9eOsize9DiUQVe3O/gDldtNUEsi
         Nm1waWzNNOnvIBNqfpb23gqxUQ4UbMJ5m8tnLWVGpZglkAJx9SRN4vw59HUUQ+OwL8Qq
         AW8jZzz/nGyqCWzk+K+3J3BpLNOzERuMU1yQHqTaXaUVbFJFD7Mbo8b2Vu3kDmYM2DCE
         b1LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=RsVrvHU0lq9BKv+fdCMKiTeR3YJ0//oyX3EPMpozI0k=;
        fh=OOiNjT3SMDS120qUu1k2+L+6uEpRU4yxmjyL/qIUN8Y=;
        b=SVA5ZnKaqx7pmF6DCzugCZ3Pw3R0jv9t4ACb14RCPDawWNh59McfmtQoYwpwdQh7dT
         p7TEdM10zi5A4XeNuAXmBcv2uz6skFTePD1KpgPKf/7+yWW6XSx5J7iwx33E7DYpabQg
         ugdKg3OlWZVsM6TlMkbltKM31Zm3Xr1MtAGtRK0B0KxKUIUAIuBrnbQoLst0LVdeaUIF
         tmXxiwt3HCTdcY6RJW0yzjnC1vVry2nXcNzrbG+43i6PzXFMKxjkWeXKe6z/f2c+5qtg
         EI6/l9RpcXNmE5tR4pPpI+If5ytNho7TUwhWHSeY4Wn9n+X0qPj3WJbdj3gmzpT3JSGk
         nQfw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736469148; x=1737073948;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RsVrvHU0lq9BKv+fdCMKiTeR3YJ0//oyX3EPMpozI0k=;
        b=wyq+ajoQ2FzIeknWgfX9Z4fKxLeC+qSd/B4UiFi2VADihbUgXc2ySi8itKxZ38iekt
         HICqjCGURxpK4gzzGkQVbs8HsSUkxvSkNlyHK3S6BAkiolFqKN3MOI5mag/3kG0e4hBb
         TllS2/NSZ5ockLZpmo14SDPcyUohkUbBavMMKQ/VwdeaCxAokaeshT7s6P0IGyOww3bn
         y6+5VNU60OpRFIuycalijy8F8x7DxI55/o3slCkKgAp1OMI74p3Bh7TxnEO4ukrF8fIj
         wuYFo+M4ilhMt6z+9eVd/Gablytc0ZEUCaf4a+9O7436UrL7DMWZMC2qqF/jWKsqiMnb
         iLNg==
X-Forwarded-Encrypted: i=2; AJvYcCXM90nLWlIoeZB9wCqMlry5YFLbM/ZhtwE2gUEaUpKgdFsf1WNsPr0Sunv3xlVmaPqFEV3tjQ==@lfdr.de
X-Gm-Message-State: AOJu0YxhbuY2qxNjk5sJTq0NKgJehUBPLb/F+qHUjA0+OaRf8LgHEg+1
	qDsvaZDs3gBVbt8iVpaTQ8Pf+clSkzmjNVAGQpNGWiFjDSRZSWsVq3tRaWn7cpE=
X-Google-Smtp-Source: AGHT+IFCh0A4eYaRNgg/AfF1sqNrpwyka/zNCH99sozSXMrmmzqpMhd5gzUjDlbTLioku0vObuRbUA==
X-Received: by 2002:ac8:59ce:0:b0:467:83b3:ab1b with SMTP id d75a77b69052e-46c7107dbc4mr50692001cf.11.1736469147370;
        Thu, 09 Jan 2025 16:32:27 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:510d:b0:466:9e59:9807 with SMTP id
 d75a77b69052e-46c7ab568f7ls32690321cf.1.-pod-prod-05-us; Thu, 09 Jan 2025
 16:32:26 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX7vFGZ8vmP+1znfCISW2gA0A3iQxHGl/le2mg9H8V5cUgY0CRvtnW/c+BPEKJ6z5OY9irkxxNngkZPcg==@gapps.redhat.com
X-Received: by 2002:a05:620a:469f:b0:7b6:d2bb:25cd with SMTP id af79cd13be357-7bcd971c56amr1284458685a.37.1736469146144;
        Thu, 09 Jan 2025 16:32:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736469146; cv=none;
        d=google.com; s=arc-20240605;
        b=FPzhuJhXElkFh2EQw8q3Et0OzRDNBZPdx7BvNYPipvdzbSy+ACumbgIg19VGRYEPV0
         TYggy436z31AEEzAM5SbCngXEkWl7tqSiJe77pBdAMWmoF6J3ieu/ARmplGeQI+MOxII
         UbIWiioMnOzLrrXAlSbiQogR5+RPUdCSPPRLK/qcmdEeh+1spMjnzgMa+NPeNxo/p5Z1
         ipMuFRPw9OGdCzYc2UYyIE6B7d7rWkGLtg4OCHITyCz/NOSgTO5o2PWoCqWLsF/Bcyj9
         YWxs6ZQqiuz90SnmEA3KA4PLyzRYy7oPOYTZYCC4jwR4007+vBX0XQRbSbzFybBBQ25j
         dYfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=RsVrvHU0lq9BKv+fdCMKiTeR3YJ0//oyX3EPMpozI0k=;
        fh=bTfZd/jz/G3NqSmi5SjMOwSrT8L+EiL4O/jLfsN7qN4=;
        b=BypRmuhhA/UM9g3AwNVTwvE8fCLInG0bROaWQMixBgWP1RemKxC8ygRbpS++aabHwL
         H3xehf0oQQu7bVCh5zKBKgVgaGE+60axJBwL0nUM5pvAt6lhCzs86ViX84hWg5bzYLSe
         5YoCZzfumjMGJcsNQ+XGGmaUWHemmANJBES//1MJm8r5dUNRuTz+xhAhokHpZvJeeQoP
         MnEggrnHES1IIhxJ27SUYiL/SgWUSxoTL9FTJ6EShC/ECPXStpPRrQlmN2ycQ7md/+WX
         c1QPj/UFalkjGTkPVDCvFPWRXb8UUwHFpgsM1Q9bk4RnAcEADIMoXw2C5UgqC2buYR/b
         OZTA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7bce350678esi302795585a.506.2025.01.09.16.32.25
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 16:32:25 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-542-wuOMVuILMs2MfOPNVVtoZQ-1; Thu,
 09 Jan 2025 19:32:24 -0500
X-MC-Unique: wuOMVuILMs2MfOPNVVtoZQ-1
X-Mimecast-MFC-AGG-ID: wuOMVuILMs2MfOPNVVtoZQ
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D08E819560B0
	for <blinux-list@gapps.redhat.com>; Fri, 10 Jan 2025 00:32:23 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AEC423003E7F; Fri, 10 Jan 2025 00:32:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AC3BE30001BE
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 00:32:23 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2E9EC19560B0
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 00:32:23 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-367-jwKGXd73OvyGCGia_j3zsQ-1;
 Thu, 09 Jan 2025 19:32:20 -0500
X-MC-Unique: jwKGXd73OvyGCGia_j3zsQ-1
X-Mimecast-MFC-AGG-ID: jwKGXd73OvyGCGia_j3zsQ
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 23E9440508;
	Thu,  9 Jan 2025 19:32:19 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id C469E1001B8; Thu,  9 Jan 2025 19:32:18 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id C16561000A9;
	Thu,  9 Jan 2025 19:32:18 -0500 (EST)
Date: Thu, 9 Jan 2025 19:32:18 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: =?utf-8?Q?Lars_Bj=C3=B8rndal?= <lars@lamasti.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Google blocking access
In-Reply-To: <m3a5bzvek5.fsf@dalen.lamasti.net>
Message-ID: <Pine.LNX.4.64.2501091928400.1357245@users.shellworld.net>
References: <m3a5bzvek5.fsf@dalen.lamasti.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: 4aEdApWGLAjK_UgrjIguLsooNxVyG54npv6P0avfPc8_1736469139
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: iK7EKhwLgsPGCDLcpFw0YLOhulPnpVd_uhFfqEOIOBw_1736469143
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-1512932709-1736469138=:1357245"
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--1949452079-1512932709-1736469138=:1357245
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Hi Lars
I actually have two suggestions.  Although one of them depends on if you=20
are  willing to make a call.
Very very recently Google's disability support team created a phone=20
number. it is not toll free, like Apples, Northern California if memory=20
serves.
Given how Google tracks things, I would personally seek a truly human=20
connection for the solution.
My other suggestion is to join the Google accessibility list, and there=20
ask for a direct contact.
Does that resonate?
Hope it helps,
Karen



On Thu, 9 Jan 2025, Lars Bj=C3=B8rndal wrote:

> I'm using Elinks regularly from a server located in a data center. Until
> recently, with no problem. But now, they have blocked the access from my
> IP address due to the lack of javascript, and the posibility to prove
> that I'm a human and not a robot. I've not found any email address or
> contact form that let me contact Google to remove my IP address from
> their block list.
>
> Do you have any suggestions for how to resolve this problem? Is it
> possible to run orca remotely, so that I can run Firefox from the
> server, just to access Google and prove that I'm a human, in hope that
> this will remove the IP address? Do you have other tips?
>
> Thanks,
>
> Lars
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>
>
--1949452079-1512932709-1736469138=:1357245--

