Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id DC9B11C80BA
	for <lists+blinux-list@lfdr.de>; Thu,  7 May 2020 06:08:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588824484;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QNKPTk8isDGNA/MG7Wn8ZNrTDXqgX7xU7jhgXaRqyYo=;
	b=StQk/T2RnCa8YtrwLCJeGk/K0EnlXsrCSyELzdf+DrIz1seOF7KXz+mEbKgjGIIRz+frGP
	yIRLqn+Dm3YaF0/cVNDH+X7mPuvaguexAoyuLlXECAO+HG7VfQnYNwa/i9aTjH4Tzidzmp
	7+HZ+8/mknK5t019rf2c9ObJglNh2Pg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-71-qy-hzpk9M_GPfSpXaNTU3Q-1; Thu, 07 May 2020 00:08:02 -0400
X-MC-Unique: qy-hzpk9M_GPfSpXaNTU3Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2E439835B48;
	Thu,  7 May 2020 04:07:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 05D335C1D4;
	Thu,  7 May 2020 04:07:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DD49A4CAA0;
	Thu,  7 May 2020 04:07:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04747qct006499 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 May 2020 00:07:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CE0E72156A2E; Thu,  7 May 2020 04:07:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CA3682156A23
	for <blinux-list@redhat.com>; Thu,  7 May 2020 04:07:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1EA85811768
	for <blinux-list@redhat.com>; Thu,  7 May 2020 04:07:49 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-336-StxUkXKPNvGGKMJzThQrZQ-1; Thu, 07 May 2020 00:07:46 -0400
X-MC-Unique: StxUkXKPNvGGKMJzThQrZQ-1
Received: by server2.shellworld.net (Postfix, from userid 1028)
	id 38E6F8C0595; Thu,  7 May 2020 04:07:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 30E8C8C0233
	for <blinux-list@redhat.com>; Wed,  6 May 2020 21:07:45 -0700 (PDT)
Date: Wed, 6 May 2020 21:07:45 -0700
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Tab-Completing a Program After man?
In-Reply-To: <alpine.NEB.2.21.2005070001100.25293@panix1.panix.com>
Message-ID: <Pine.LNX.4.64.2005062106410.11539@server2.shellworld.net>
References: <Pine.LNX.4.64.2005061731420.9482@server2.shellworld.net>
	<alpine.NEB.2.21.2005070001100.25293@panix1.panix.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 04747qct006499
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Just typing
man 1 lyn
give same results.
Chime


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

