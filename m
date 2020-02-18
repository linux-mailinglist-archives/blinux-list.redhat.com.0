Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 95A3C1627A7
	for <lists+blinux-list@lfdr.de>; Tue, 18 Feb 2020 15:05:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582034724;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dgkD+fl6mKwjkD2yR4SZIzCV6pBKMRZeQZlcaagBAkM=;
	b=CxCDLEuGBS0rFd4mU9UqmDx70KANt6Ok1Wov0bmIKJ6auSKVobAPZ/sLzsU1DbxmnsBBLL
	LEcA0fvRSIDHEjlvkA3E3SerVmdKXPjaFOlhKYSnP6MV6wAqE/11eRv0fc3Z+VuxPeiXoS
	2M1Va7GCK9fl+qEh112uKd0ACfTsqHM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-291-QAccDQdhORi33lUqbpLKjA-1; Tue, 18 Feb 2020 09:05:21 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1416318C43C0;
	Tue, 18 Feb 2020 14:05:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6226A8B549;
	Tue, 18 Feb 2020 14:05:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 849C118089C8;
	Tue, 18 Feb 2020 14:05:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01IE5121024281 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 Feb 2020 09:05:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C93B32026D67; Tue, 18 Feb 2020 14:05:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C3C712026D69
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 14:04:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 468D2101D23A
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 14:04:59 +0000 (UTC)
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
	[209.85.210.65]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-156-ExBESoPQNyKfr4LJQz26lQ-1; Tue, 18 Feb 2020 09:04:56 -0500
Received: by mail-ot1-f65.google.com with SMTP id g64so19559997otb.13
	for <blinux-list@redhat.com>; Tue, 18 Feb 2020 06:04:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=50kLE7nqsnyn2EYvfPAj278hTqAtJSa+eVVj1yDfbn0=;
	b=lmhluvWEaLOK9EIu34reDmpzDk5Cq8wM1y5VwEnfwt0P5olFkbmDhrf9hOxjeFkwi+
	FnIEULb6GskS3vrK/mVuY0IgYBOYvR9++awhf9x+okpMnQVityGue8JcN78zfFcWsLYV
	TYRx0vtJg/z83/l2L1wonmX8GaZsV8LvWNexH7kcKZ36yFDnLSbGznky6dWVIIHIMDHs
	VckuGfGMz0Z9WxdYIrudCNPFTFSaCc7SC2ZuyoU8893rg4eqdwMv+hyC/T1UjZyCLKwB
	U5wxQTmBct3eZrxchnQq1yYpsjuE7c4g+VsxauBK9eiec+/beOjJQofj42tCA12atk5q
	ZWUQ==
X-Gm-Message-State: APjAAAUvlmKOWFc5Y4+2g8eGJZ8gOb7W7k177iQb0dR4qRHfoUXDGbaI
	Cof6jU6RYy6sCnpPujXsgyJEBS9neBrrNgYqAL0SMQ==
X-Google-Smtp-Source: APXvYqwmTzhaO35xT9KhOTCyyhSevsbn0mfqTyc9vjkljMCmuabNvINiGQBBf07jdT9Z1OiM+PtyaGuu6K5vQzA9sxo=
X-Received: by 2002:a9d:6f0a:: with SMTP id n10mr16434871otq.54.1582034695189; 
	Tue, 18 Feb 2020 06:04:55 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:12f0:0:0:0:0:0 with HTTP; Tue, 18 Feb 2020 06:04:54
	-0800 (PST)
In-Reply-To: <CAJKfDDG-bs1DZNRrV=xg9TC6fqsV--q=rm7WiK6PPXCLVGC9tQ@mail.gmail.com>
References: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
	<CAJKfDDG-bs1DZNRrV=xg9TC6fqsV--q=rm7WiK6PPXCLVGC9tQ@mail.gmail.com>
Date: Tue, 18 Feb 2020 14:04:54 +0000
Message-ID: <CAO2sX32QD1my9ZTYN=uX864Q8bc+fqb1Ae90MQqrdjaZ9_QBOA@mail.gmail.com>
Subject: Re: early warning I hope
To: blinux-list@redhat.com
X-MC-Unique: ExBESoPQNyKfr4LJQz26lQ-1
X-MC-Unique: QAccDQdhORi33lUqbpLKjA-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01IE5121024281
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've never used Arch or any of its derivatives, so I can't really help
with the original poster's problem... though I would've thought the
old Kernel would've been left in place and sighted assistence could be
used to select it from GRUB or whatever alternative boot loader one is
using.

I do find the harsh criticism of Arch as an accessible Linux option
and the recommendation of Debian Stable and Ubuntu instead a bit
eyebrow raising though. Seems like half the issues people have on the
Orca Mailing list come down to Debian Stable and Ubuntu(and especially
18.04) having out-of-date accessibility stacks, and from what I've
heard over the years from various sources, Arch seems to be the most
popular alternative to Debian as a base for custom,
accessibility-focused distros.

Admittedly, I'd probably recommend Debian stable to a sighted Linux
newbie, but accessibility is one area where Debian's focus on
stability over cutting edge does more harm than good... I'd probably
recommend Knoppix running in Adriane mode to a blind person interested
in learning Linux, but it's been years since there were any official
Knoppix images with Adriane as the default boot option, and while it's
a one line edit to a single text file within the ISO to make Adriane
the default, I know no means of directly editing an ISO, and the
method I've been using to make Adriane DVDs of mount, copy, edit,
rebuild, burn is rather involved... Plus, Knoppix is only really
designed with live use in mind, so while it's amazing for system
rescue or having a portable copy of Linux, it's not the best for a
primary OS.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

