Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2D56EB915
	for <lists+blinux-list@lfdr.de>; Sat, 22 Apr 2023 14:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682165464;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yxtr4k1winVHUHGCBcoclTxl9ocYjqLF6o5Zw8xId/w=;
	b=V1FvJbcIUh0mCFz2RuEvIO8OnoAHietKfBJNP13PyJ7CAoV37K2aqRBHLq7U231JUYSloS
	if+YDIz7cZP/W3seA1NU/6Tc0CYtU/9qSQMsrw2mIXUUDT1+PFIN/yM1XyzsVD07eyUvI8
	SL9uOoT45gTS4T98Rx2WA19LYdozLWw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-672-aGvHDkQpOZC8foC5q1-ZCw-1; Sat, 22 Apr 2023 08:11:00 -0400
X-MC-Unique: aGvHDkQpOZC8foC5q1-ZCw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5FFA61C05ABD;
	Sat, 22 Apr 2023 12:10:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2A82B40C201F;
	Sat, 22 Apr 2023 12:10:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A16F71946A46;
	Sat, 22 Apr 2023 12:10:54 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 22 Apr 2023 14:13:12 +0200
MIME-Version: 1.0
Subject: Re: Samba file sharing with external access
To: blinux-list@redhat.com
References: <mailman.52.1682161130.2351825.blinux-list@redhat.com>
In-Reply-To: <mailman.52.1682161130.2351825.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:gIizMoRz7nM=;HE5xrF8Fxen1d96VJ6eKetdvIyL
 IOiJeb8S7+ZhSA4Biel3zbDLstaZzJ1P1wWpnKZaA0GDzxzy6dDKwImR0E6Cne8exvq3SIqwp
 Q8YMD6vBJ926PQ47/nQqzdF5CW5JAgNHPTHt20+xg7re0q2aWG+7+uXVONtkA+ep3ClfF63Ih
 sf5f7bo88qVXN4GB6Dh3OAuzsmVifuJtoqv3sCoqce46iRkRSPbg44uQ5eGbozWL4lut1bc/t
 UVCHhD5k5EJARBjtWJX2UKnixoaulecZsB2fVUupr0P1mliCHRgq1xT5BZjBQOqSkovdYAjU9
 idEdmprS7tFg9e7Bc0LM1hvTRt1qh7H7ixRzTvpPshHrPr7kwFiODRd0yN9/owedcxpK/79wC
 R+0Kvw+2PVYCV4kXU/ERbGpCoEISNb5rDWAuao1LD8sRWOmjCA2j69WpgnwhXqWcWVpJN0Lou
 9fHyL6x8ECa7PxdgHlxyV8e0CimEUdVWTc/PQa+jCPzC137zvU98cTQAVBtvsoLzUuS7pig2/
 PtaAirNYRL26jPM7YYiP2V7WTJfetuHvyJ6nH7JJNW43Jxo9ThZS3AB07OhOkMr42rRbT0ttS
 n1kQCZZuGcCW2LxyDW8U47JW1bJrzxTE2/iXrWVTdMqxTCrFBRUYlp9Ihwr7KLnUNIT1zrvvr
 BCZq/lZOWK/LE0WYtSoFagRCQ7i9pB41TPNU/wIjTibGIq3aMkQHqwTkNP7ab8LvOXsRktyJw
 tjtl1xroO3tGVSN0daNUsWfUQBE4H6VLKoVRvyBps7NVg9GAAPT1xZpwRYg6+g4aEZ/7QHh04
 U+Ll0r36Tk1JT94EfMGi50ofoeV7KgqXSd7uj7jZFP0ifikSslNcyocj7Y46kM+krKOoO1B9q
 d1nPquZF6LyZMf4YOzSzvkz2137ePc9qSPLa8OVSX1foCNhwdgAgqZTy0VK2gpZZSSrIxShqR
 bOsPWQ==
Message-ID: <mailman.67.1682165453.2351821.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On 4/22/23 12:58, Linux for blind general discussion wrote:
> Hi,
>
> I use Samba for sharing content of my external 6 Tb hdd for my local
> network. Now, I want to redirect my hdd to all members of my family, but

I'll assume that by redirect you want to give access to some SMB shares
to your family.

- Will inbound traffic be coming from static/dinamic public IPs?
- What clients will be used?
- How many users will that be?
- What type of content  are you planning to share?
- Can your internet connection handle the load?

> it requires public access. I have public ip address.

- Static/Dinamic?
- What about DNS?

> So how is the best
> way to configure Samba for access with my public ip?

The best way is not to expose those kind of services to the internet.

> I have all users
> and passwords created and I will use Ubuntu and I'll try to use
> gadmin-samba package, but I have no experience with this type of
> sharing, so if you have some tips, you can give them.
>

Don't do it, use something that is already available.

If you want to still go ahead, you need to understand firewalling,
securing a Samba server (username/PWD is no security in this case),
understanding of the SMB protocol and security risk.

Services like VPN and SSH could help but you still need to punch a hole
in your firewall.

I would also suggest to not use UPNP! :)

--
John Doe

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

