Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D8881379F9E
	for <lists+blinux-list@lfdr.de>; Tue, 11 May 2021 08:18:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620713898;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bivOabCI4G66G1ZpZZwRdM/I0SfMScY6QA9ABeC6yF4=;
	b=NxYGj2ckBD3OTRDuki4kgRysjhMERV7JI5XrAegJzX4U6+8J/2LtY7OFlLtVmZgIiS4GkL
	pL5xRiCeqg5seXcz6xhtmuQh2ovw6o0ImX0HbpSO3pYfeR9l34a7R7DYJAhYuw96rHQ23S
	epxM6vWUkP473HzYwrefpwM6KYAYTig=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-553-8TslXzA4OnyH6wi5EUlgbQ-1; Tue, 11 May 2021 02:18:16 -0400
X-MC-Unique: 8TslXzA4OnyH6wi5EUlgbQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 180338042B4;
	Tue, 11 May 2021 06:18:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E642C2BFF6;
	Tue, 11 May 2021 06:18:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8019C1C91;
	Tue, 11 May 2021 06:18:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14B6Hqnp022399 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 11 May 2021 02:17:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1B2566E1DD; Tue, 11 May 2021 06:17:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 161C56E1C7
	for <blinux-list@redhat.com>; Tue, 11 May 2021 06:17:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 94CF3100E642
	for <blinux-list@redhat.com>; Tue, 11 May 2021 06:17:48 +0000 (UTC)
Received: from pb-smtp1.pobox.com (pb-smtp1.pobox.com [64.147.108.70])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-393-3xLhVy7ZOdqhDyXH_psYeg-1; Tue, 11 May 2021 02:17:46 -0400
X-MC-Unique: 3xLhVy7ZOdqhDyXH_psYeg-1
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id 9F813BD874
	for <blinux-list@redhat.com>; Tue, 11 May 2021 02:13:49 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id 95C90BD872
	for <blinux-list@redhat.com>; Tue, 11 May 2021 02:13:49 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [76.88.160.87])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 0374EBD871
	for <blinux-list@redhat.com>; Tue, 11 May 2021 02:13:49 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.92)
	(envelope-from <joelz@pobox.com>) id 1lgLeD-000620-1G
	for blinux-list@redhat.com; Mon, 10 May 2021 20:13:37 -1000
Date: Mon, 10 May 2021 20:13:37 -1000
To: blinux-list@redhat.com
Subject: Speech help
Message-ID: <20210511061337.js4myeivpfo6tqtj@sprite>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-Pobox-Relay-ID: 0CE9CC8C-B220-11EB-810D-D152C8D8090B-04347428!pb-smtp1.pobox.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

My dad has lost his central vision and I'm looking to see if
some speech utilities on his debian system could make it
usable for him.

At minimum I'd like to have synthesized speech to help him
login at power on, use a mail client, and have audible feedback
for each keystroke. A speech-friendly menu to select a program
to run or system shutdown would also help. 

Can you suggest which software I should use? Will a text
mail client like mutt be easier than a gui client like
sylpheed, that he was using before?

Thanks for any pointers.

Joel


-- 
Joel Roth

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

