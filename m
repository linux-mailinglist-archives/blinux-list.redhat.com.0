Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1C76A64D8
	for <lists+blinux-list@lfdr.de>; Wed,  1 Mar 2023 02:31:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677634299;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Uud/e7EsfApwlCUitOq+wYuc9cBM0rRPD1CDq30k330=;
	b=Taq7jzSsTHdw7RxMKBUL+xhY7dOF6RJKEGP2qyJaVP6T7IMptWw4Zie/K4ioZqBWo1Q9qG
	/eAWYv7jW3w42QnsQLDwTYb0kU44o6RA9Zioa+wxG/3mpb2hUDtFwbHz0L004gjsyY3tno
	GIERQG9dKOEqWSm7A2d1updY5Mk3Bng=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-463-NYRWS4WfPaaPYe8BtG1Crw-1; Tue, 28 Feb 2023 20:31:38 -0500
X-MC-Unique: NYRWS4WfPaaPYe8BtG1Crw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2A0261064B67;
	Wed,  1 Mar 2023 01:31:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5515818EC6;
	Wed,  1 Mar 2023 01:31:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A43C219465B9;
	Wed,  1 Mar 2023 01:31:33 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Mar 2023 01:30:55 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Looking for a podcast player
References: <mailman.959.1677626979.3183645.blinux-list@redhat.com>
 <mailman.999.1677627794.3183649.blinux-list@redhat.com>
 <mailman.1011.1677627967.3183643.blinux-list@redhat.com>
 <mailman.955.1677628530.3183651.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.955.1677628530.3183651.blinux-list@redhat.com>
Message-ID: <mailman.1029.1677634293.3183646.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  I used hpodder as my podcast fetcher for many years, but
as best as I could tell, hpodder was discontinued and removed from
several package repos so I had trouble (re)obtaining it when I
reinstalled my machine.  However, if you like it, "castget" has
similar CLI functionality and I was able to switch to it pretty
easily.  Just in case you find yourself in the same situation,
needing to replace castget.

-tim

On 2023-02-28 15:55, Linux for blind general discussion wrote:
> Actually Jude, thank you, it was hpodder from many years ago.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

