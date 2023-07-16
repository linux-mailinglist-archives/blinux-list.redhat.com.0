Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B61755031
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jul 2023 20:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689530498;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BdLnW+eld4vY++6ciCstGaLvOHmFoVKoBy+Zz13fFHk=;
	b=h1rlo+ucTkUQe/rd58XqP6wLObzORFCmCW+fMOgr7QQs/O8PKbwCgJbJ1SxHDAeUsZ3yYV
	3xjCjR0nUZvUbKoGHg7OEL5Lp/vONROr0RdXoTzB2awyzw/spqrlk8tLVOzEEkR1jMRWnK
	FOW0AkhI7V8K0yqMnm+lkSRIhriglro=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-435-4Umerj7WMFG-Pzz-YH2VFA-1; Sun, 16 Jul 2023 14:01:35 -0400
X-MC-Unique: 4Umerj7WMFG-Pzz-YH2VFA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ABDC8185A7A5;
	Sun, 16 Jul 2023 18:01:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 58CC3C57963;
	Sun, 16 Jul 2023 18:01:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A56E41946597;
	Sun, 16 Jul 2023 18:01:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: Attention chime: the podcast client
Date: Sun, 16 Jul 2023 13:01:46 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.109.1689529901.687812.blinux-list@redhat.com>
References: <mailman.119.1689509513.687817.blinux-list@redhat.com>
 <mailman.83.1689515407.687813.blinux-list@redhat.com>
 <mailman.98.1689516548.687812.blinux-list@redhat.com>
 <mailman.131.1689519363.687818.blinux-list@redhat.com>
 <mailman.96.1689528595.687813.blinux-list@redhat.com>
 <mailman.109.1689529901.687812.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.4.6.0)
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:5whYa3+WYiw=;tkr0U0SKexnaCgBIuYQD5eC0caE
 Vxc+MAPE+VuJOANBnbpgY90q+yAQ7iyg4DJzG0czzUd/kxYT3f3rF/Om8RworAUAIsZeUGj0C
 avGoMEL9/1u3NThJUWze6yCI5iXj0OnTjKRXK+77hOD7WpbnPzezJHIKnHf26ndnLstbFevFC
 L8fTw075I6HvX2expELN+0yi/1yhlRAnPvHa+RT4wZdRqf9tzdhoiDfJwbKJcWyON0+Xul8ZX
 o8N+wliNztiQFLIoScakn576kOKgBQwS8HqdBA5FtNZaZkFboPOmRoIiUZ8aSWYfnkPyhHW9J
 LNqDHS1J4Y3anP7uhRpI2g+3Lq5p8WftbMBPGguJsSz+P1YtZ6fQkrUjg/rbMn33xBz+sz9S3
 dyFzFPaT8wZNHNbbzhzsTrwGbrtqvgG8ZWhiqHYqyxeeDYQAHtIqQoQckAb9bqlTPaVc3WSAA
 jjjOQclBJUuVMmtqvhhKiGSzdibMSuGGd+KOE39WRfTsVQx5S4PB0RmL6mz1y0GzICEI8nZBf
 /VlAg4JlcQjg7Qm+W0qlMCydLwMQiV0a7oWutUiKAWRk1z9W2+KD5vsed+Bx2BoW7gTD2PuSF
 aMln4NcubGpwYOfIBP9j0mJ/cmUDYqL1URZi51Rn5GCkT6ppch2Y8lWC3tX4VP2WH8jJBkq8B
 qnXUNTJghuUaftcK+I7ukrIaimJ5zkARIj0EL2zrptho0H3MgOEScviKczmsQJjRr+Sm4dL3M
 csh89nVWNUayfCbOWEqRaylpvcrCZZIceXkDSRo4AKCnUM9pP48fSwn22YM3PrAXATuHuqVy/
 fcXuVq7p7qcf+Kaaw+Pb8/zHIn9N+WDgIuQrpc7DI2kCRrcwiROubGUhm/Jmfh6EZXpSmJdHO
 wt+YY3WdfzCalkDfZNk5d/gevdrseU6elfqKdtz8ZpFp4YTYFYBB9rSiG1JjbHC9vTS2qWYg2
 qXJrl1bMqVUk+hPiyLUetAOWZwY=
Message-ID: <mailman.99.1689530481.687813.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

One example is the Dark Dynasties podcast. It just has episode names and no numbers.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Sun, 16 Jul 2023 10:51:34 -0700 (PDT)
Subject: Re: Attention chime: the podcast client

> Hi: First, please sign a name of some kind, so Marc can adequately address your
> concerns. 2nd, as an example, I download target usa from WTOP-and-I have
> eppesode numbers along with show titles. I would suggest when you fill out an
> issue, please provide a specific podcast-and-will be `quite happy to examin.
> Thanks in advance
> Chime
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

