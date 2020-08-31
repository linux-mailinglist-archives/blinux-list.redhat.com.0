Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 98829257DC2
	for <lists+blinux-list@lfdr.de>; Mon, 31 Aug 2020 17:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598888461;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=A7gDkjbW8HddkiI6b+yfaKPELbUB5PSwwadQ8eTNr9Q=;
	b=DrR1R80payEb0MwugACMX0InFjDJo7wlhznfBaEQ1gKNxSS0TXFGFaxVxMsnClVA4nUm13
	qvWdDR1uBCj+PoKQzhMdtX/5vl38Di9csxEIli6dhoPPql1w54ehGQv7n+mszTczFfC9xi
	G5rGYvSQNdlT1gxp0vGF8CC1tjR4kBk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-208-BkT0DU8fPaysKb_H9dg7yQ-1; Mon, 31 Aug 2020 11:40:58 -0400
X-MC-Unique: BkT0DU8fPaysKb_H9dg7yQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5E72E802B7B;
	Mon, 31 Aug 2020 15:40:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7839869C9D;
	Mon, 31 Aug 2020 15:40:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BBFFA18A0B64;
	Mon, 31 Aug 2020 15:40:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07VFeYiB008783 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 31 Aug 2020 11:40:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F2C462166BA2; Mon, 31 Aug 2020 15:40:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EE52C2166B44
	for <blinux-list@redhat.com>; Mon, 31 Aug 2020 15:40:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1A5CE8007D1
	for <blinux-list@redhat.com>; Mon, 31 Aug 2020 15:40:30 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-429-UESlmVPvOhal8ByEywenJw-1; Mon, 31 Aug 2020 11:40:27 -0400
X-MC-Unique: UESlmVPvOhal8ByEywenJw-1
Received: from spot.local (spot.local [IPv6:fe80::108f:61b6:e9ea:e7ae])
	by cfcl.com (Postfix) with ESMTP id 8058813FC317;
	Mon, 31 Aug 2020 08:40:26 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Date: Mon, 31 Aug 2020 08:40:25 -0700
Subject: FYI: PinePhone community edition for Manjaro
Message-Id: <51090E19-5D47-4439-B62C-1CF068A75451@cfcl.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07VFeYiB008783
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.502
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The Pine64 folks have just announced another "community edition" of the PinePhone, this time pre-loaded with Manjaro (https://en.wikipedia.org/wiki/Manjaro).  According to Wikipedia:

> Manjaro is a free and open-source Linux distribution based on the Arch Linux operating system.  Manjaro has a focus on user friendliness and accessibility, and the system itself is designed to work fully "straight out of the box" with its variety of pre-installed software.  It features a rolling release update model and uses Pacman as its package manager.

For $200, you get (eventually) a phone with 3 GB of RAM, 32 GB of storage, and a pre-loaded copy of Manjaro.  It also comes with a "dock" which should make it more convenient for use as a general purpose computer.

Once you have the phone, you can swap in a different microSD card containing any of about a dozen operating systems (e.g., Mobian, postmarketOS).  So, if you're interested in playing with a Linux-based cell phone, this is the hot setup.

PinePhone Manjaro Community Edition
https://www.pine64.org/2020/08/31/pinephone-manjaro-community-edition/

In closing, a word of warning about the Pine64 sales model.  Basically, they announce a product, accept pre-orders, and then do a production run.  So, the product may not arrive until a few months later.  (I'm scheduled to receive my postmarketOS PinePhone shortly; I ordered it back in mid-July.)

- Rich Morin (rdm@cfcl.com)



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

