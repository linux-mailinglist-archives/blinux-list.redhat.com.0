Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4AB617BDC
	for <lists+blinux-list@lfdr.de>; Thu,  3 Nov 2022 12:46:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667476003;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qv1CF++PU9ekPh4ApgFVBInHxzfgH99IqQbe9+NYYpM=;
	b=ZU4IbenZnNZW+l//MyfYrffHvw9pIuPYBGzKflIgLS9xWJi1JDq++1Kvys7pty+CR4v+Eo
	9p4d80EXvp4Qr5Uk8/mTwrytLbocQ6K3JpBpqv5sR4FNOs4++ZWuiyxiae+jiQ2G2qk6um
	iT5ozzEaulR0pWVCNIrLDpUIH5nQYuU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-599-0BvdbG0DM6OVHJpeChJ84g-1; Thu, 03 Nov 2022 07:46:40 -0400
X-MC-Unique: 0BvdbG0DM6OVHJpeChJ84g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4C6CD2A5957D;
	Thu,  3 Nov 2022 11:46:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 554AD1121325;
	Thu,  3 Nov 2022 11:46:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C39BB1946A66;
	Thu,  3 Nov 2022 11:46:31 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: <blinux-list@redhat.com>
Subject: Re: Javascript for text mode (fwd)
In-Reply-To: Your message of Thu, 3 Nov 2022 17:38:31 +0800 (CST)
 <mailman.4321.1667468317.3007.blinux-list@redhat.com>
References: <mailman.4326.1667439822.3008.blinux-list@redhat.com>
 <mailman.4292.1667467115.3005.blinux-list@redhat.com>
 <mailman.4321.1667468317.3007.blinux-list@redhat.com>
Date: Thu, 03 Nov 2022 12:46:24 +0100
Message-ID: <mailman.4503.1667475991.3004.blinux-list@redhat.com>
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
MIME-Version: 1.0
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Do you thing that it should be possible? I think it is but they don't do it.

Artur

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

