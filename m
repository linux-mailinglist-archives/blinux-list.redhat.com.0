Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA417599C4
	for <lists+blinux-list@lfdr.de>; Wed, 19 Jul 2023 17:30:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689780623;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Bi/t1Rszl0RxM1oDdWjsv4QySg5NivA3UgQclpddZxA=;
	b=H/i1q+SFDvUpFJAtHGhgYwzJMTVO44/1u109DSRYLnpDk0OSyghnGMelWDTg+kCzpWUmLa
	01/upwbYh+rY+8ujhljQN9Q4C6hnbTlKBm53v3LFdwAgOCHnhAQZfCffZRoO203M8chnOw
	awLP89zZKZLWumKS1YxQGmdtMhxoUwI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-316-lOyba1CUPwqMnStT8ue1MA-1; Wed, 19 Jul 2023 11:30:18 -0400
X-MC-Unique: lOyba1CUPwqMnStT8ue1MA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 93DAB1064FB1;
	Wed, 19 Jul 2023 15:30:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 91C962166B25;
	Wed, 19 Jul 2023 15:30:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4392119465B6;
	Wed, 19 Jul 2023 15:30:14 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Wed, 19 Jul 2023 08:11:43 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Mint Installation?
In-Reply-To: <mailman.1180.1689778383.687817.blinux-list@redhat.com>
References: <mailman.1180.1689778383.687817.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1100.1689780613.687810.blinux-list@redhat.com>
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
Cc: "chime@huber-humphrey.com" <chime@huber-humphrey.com>
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well Jessica, I am saving your comments for Saturday, when I work with Marc 
again. Maybe a faster way would be filling out an issue on his github page. 
Thanks in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

