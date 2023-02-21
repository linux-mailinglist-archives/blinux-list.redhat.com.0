Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D42E69EA02
	for <lists+blinux-list@lfdr.de>; Tue, 21 Feb 2023 23:22:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677018170;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BjWVnEm/0CpAWyO9YIYmvyfOLXMOSIOT3rkyR+NkuKM=;
	b=hAw7Bg75pUnJJvFMvb2OVoJLkfJd/wlW6RlxH14pZSuV1jf5kd32l5gsqZqXpaPm0XzGjN
	3U7Qy+lzglVOc/kqT/U4knK9q3G7gO1Of4WTFCAsEdwEn5c+Z8xzLp0eGrppfg53QWal/X
	7uan9dlHkzejopMNrrBwxP3f2UtbIQc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-202-TK_VabqYNS2jwQe8Aw6fsA-1; Tue, 21 Feb 2023 17:22:46 -0500
X-MC-Unique: TK_VabqYNS2jwQe8Aw6fsA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2A64B1C0419A;
	Tue, 21 Feb 2023 22:22:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5E8A1C15BAD;
	Tue, 21 Feb 2023 22:22:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C0D4B1946597;
	Tue, 21 Feb 2023 22:22:43 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 21 Feb 2023 17:22:40 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: why
MIME-Version: 1.0
Message-ID: <mailman.918.1677018162.686538.blinux-list@redhat.com>
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Can  someone shed light on why links the chain can access
http://www.realclearpolitics.com
while lynx the cat only gives me  an error page  with admonitions
to enable js and remove ad blockers?

I thought links the chain didn't support js. Is that wrong?

Thanks.

-- 
Rudy Vener
Website: http://www.rudyvener.com
Check out my latest story: The Last Mile https://www.scifishorts.co/authors/rudy-vener
Get a Free month of Sci-Fi Shorts when you subscribe at https://www.scifishorts.co with coupon code "FREEMONTHAY88"

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

