Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 230D14A33FA
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jan 2022 05:32:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643517161;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AcI2AVfxo7u5vWJm9dBBsVnRzdZrEVTXBRuqUbFI8Gc=;
	b=KWKBUgcCy9IF9252zIUDOY8QBzW7baJT/Rfff13kRM139HDPXln7d/axxH1pllfep2ujbi
	qHmZeQfqWrSubJEHhJf+fD12z/2TXHdzrr9qXyRXScBf9HIyHVF/BX6vIJWMqp7lpJbsrw
	btrO1gE2KTRwGsr3Am6pQ0C9ZB0+F7s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-546-mmnagXVgOdeapqxWj1XQ0w-1; Sat, 29 Jan 2022 23:32:39 -0500
X-MC-Unique: mmnagXVgOdeapqxWj1XQ0w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B60E2F46;
	Sun, 30 Jan 2022 04:32:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 62E70100AE2C;
	Sun, 30 Jan 2022 04:32:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E7CFE4BB7C;
	Sun, 30 Jan 2022 04:32:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20U4WVHN002902 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 23:32:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C4DF140885D8; Sun, 30 Jan 2022 04:32:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C088D40885BC
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 04:32:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A63B0811E78
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 04:32:31 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-551-5uUJ7BcKOoiTgWkXNW7mUA-1; Sat, 29 Jan 2022 23:32:29 -0500
X-MC-Unique: 5uUJ7BcKOoiTgWkXNW7mUA-1
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx104
	[212.227.17.174]) with ESMTPSA (Nemesis) id 1M9Wuq-1n8VZf3JK8-005c9W
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 05:32:28 +0100
Message-ID: <20220130.043315.938.8@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: Looking for good radio software
Date: Sat, 29 Jan 2022 22:33:15 -0600
MIME-Version: 1.0
In-Reply-To: <551c7a13-7276-386b-7af0-fb1fe9348da3@panix.com>
References: <76ca400a-9d22-df23-7de2-82c3e3a16967@gmail.com>
	<fb33c316-a8f2-a123-2169-257d635a9ade@gmail.com>
	<551c7a13-7276-386b-7af0-fb1fe9348da3@panix.com>
User-Agent: POP Peeper Pro (5.2.2.0)
X-Provags-ID: V03:K1:7bo/I/e1s1NRG4dPpJw7u+2bK7poEyxNqVskafsw7saz8Ytp/lN
	l93h83BsfrA2WUgsOtfbMiDxELSIyv7wa+qbLX4OtArTIrXnAv8AX5SSfrJuVeT7okLrb7y
	ejZJvfJ667rlIxZ3xW8rVnsj8EchPCI8gW+ZPxJmvTjN42KnKMECLV5dJdL1ZCDkGft5v33
	r7CmYOUSCgc9uyZtS62gw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gxrV1KW7Hms=:1cYHj6EbuWwgBwNcqdJuQT
	+0K8E5+MBtVegtHFlAAOieJTgF6UYQnnuY8Zs4jM4Ly5LBeELjxOujVTvH4cZWFj0SHFJqKvu
	2a0sYIwZ22gvrl87NPcZoM6LsU0qmxDZNpFZnhL+C/WypulnPxEC9+T106PxJFZruL7p5mbrv
	kmT/Up76Q8NySgymeD8YRAF84UkegHjE868fkzcsV78ERFrEJofiDLxd6csATSi5XZWJitMED
	+RAqOkw+BUVaWOGN62pEIFwRig43QryBKdtxw0b5pbXhMo/3B6eqZ4h9Z+6azuFfvN5cttw1d
	U/wz7d/Q7nZ/u5sVMD+dV00/caM1MGPqA60kqhwAufh3rXjU4ehxxbNiMgMqkGY75XCWPqmLN
	PS7B6aEJaRkipg5gb8x1BF/NRQfV0LYIWEQzPEvabbJAL/oDu+9MjHqkDWX/Crz+WnZUWyDn+
	ILAZjLmG+AXYmdZGzZdtDZf09uJ8Zi3uNdY66Yc7CTLtuyDW9SE6UzSK3Kqv6I1p94JxDyWD9
	GjlN/77hKksZwa1BB1AyH9VHYbaH5OuxQViob1cfIawgkKSb6psehaHJ6hKKLLE9exCM40bPw
	zWYccya3b3SnyPZ/JbRIQdUj4p0Gf/S7j61V22H3d46XDlUhdzgkQ4c4ye03UgMhO2PbsUQ8h
	jv8D+Z4WaC7Np4serHQ7Xht7H/3kJnObJQw9h+w6fZjEUL/CvFsfvdkCJJfps++jkXgBlLoAY
	3sSmURQeb3ho5w8anZYUNqMhDvcR5DA/RDmsETQNbZ2dLcUVF8hHyFvy3nGV/9qb3q6qPel4u
	rrjB0N6lrThlmoT6VULA7Am3o5je11xwxRoMDcuFJcuG06HW0lNC8HSInC1g4SUTfVPzBw9rU
	nRndQ65hrzxqZy9AjS+Qxw9N7zzGTfbGJwLrsJEViIA79FbgMQObGIlhx/4sPjHBokX1wCknB
	QQPg4SVcJiWaL9Kd8uXJ1OrI85y+GFSdp9wM3Dk4htwgd5EAfans+uWNmgsKm0cvxtc6VTI6b
	FvbzuKplfB6dhK/jJBiGjoYDKZB/vc8r5JtVXn/lO5Q8ufjGcophnYSqBGeZ3GlWjQFYOPWU1
	KYp4Wl+oFXcxB8=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20U4WVHN002902
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Pianobar is what I use. Great little program.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Sat, 29 Jan 2022 23:27:33 -0500
Subject: Re: Looking for good radio software

> A competitor to the python package is pianobar but that's run from command
> line or terminal so far as I know.
>
>
> On Sat, 29 Jan 2022, Linux for blind general discussion wrote:
>
> > One of the best ways I've found to listen to music is with a desktop
> > application called Pithos. It's a Pandora client, so you will need an account,
> > but although I already had one, I believe it allows you to set it up from
> > within the app. The added benefit of Pithos over the Pandora website is that
> > it eliminates the ads, so you get what could be considered the Pandora Plus
> > experience at no cost right from within Pithos. Just the music, and everyone
> > and everything you wanna mix together, completely free and uninterrupted.
> >
> > ~Kyle
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
> >
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

