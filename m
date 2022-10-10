Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E77565FA0DC
	for <lists+blinux-list@lfdr.de>; Mon, 10 Oct 2022 17:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665414297;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Vsg7yJa1HwEUfDX/xP0csCCHw/61B/43iamhdvnez/U=;
	b=XS4qlS16qZ2U9k6oVmpgk6oqAIpIhuA6ml3Ad3uVshF1FfCnwuMJer827GfGVz57pIjyBD
	9HGriYNSkMJSDQwe0oG9AJZ4b17hGk9z6IXhB+plqUvr7hgqcxfp1Stx++mf2XgFwk7eQF
	VfQbamMMDKt5xW/TchSgA2yYbZ73NmU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-312-Upsr-P2dP0-rN7K9Vqnm0g-1; Mon, 10 Oct 2022 11:04:54 -0400
X-MC-Unique: Upsr-P2dP0-rN7K9Vqnm0g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4BDE1811E67;
	Mon, 10 Oct 2022 15:04:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BDEBC40E9921;
	Mon, 10 Oct 2022 15:04:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0FEE11946A47;
	Mon, 10 Oct 2022 15:04:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 10 Oct 2022 11:04:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: Is there a Fedora Espeakup Package?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.6271.1665338721.6083.blinux-list@redhat.com>
 <mailman.6427.1665341560.6078.blinux-list@redhat.com>
 <mailman.6772.1665385431.6082.blinux-list@redhat.com>
 <mailman.6702.1665390476.6080.blinux-list@redhat.com>
In-Reply-To: <mailman.6702.1665390476.6080.blinux-list@redhat.com>
Message-ID: <mailman.7167.1665414284.6076.blinux-list@redhat.com>
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

According to Didier
> Caveat: I do not own a Braille device - and would not know how to use it, anyway...


That's OK. Brltty actually doesn't need a braille device. Some time back 
it could double as a screen reader even though braille is still its 
primary focus. As I recall, there is a dummy braille driver that can be 
used in lieu of a braille display when using brltty for only speech output.


I haven't tried the screen reader portion of it either, but I do recall 
certain improvements over the years that made it useful in that 
capacity. I'm certain it won't replace Orca on the desktop, but for text 
use, it seems that now it may be useful. Since it can run as a system 
service, instead of as a subshell, it can certainly replace things like 
tdsr, since it doesn't require that a user be logged in to get it 
speaking. Brltty is also reported to work on FreeBSD and such, so I 
would be interested to know how well the screen reader portion works 
there as well.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

