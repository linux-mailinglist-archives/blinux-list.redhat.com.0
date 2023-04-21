Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C48596EA74B
	for <lists+blinux-list@lfdr.de>; Fri, 21 Apr 2023 11:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682070048;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hFIiJfalDTUjRSeuPlhSGNgXO2/UTlzY3e6vaCsodBQ=;
	b=Uyi0ckvWhS1nQNp70lq/ztnI/ntzT5paQP1aFx+RnsN52L/9IwR/Lyc3hjD0ZPbF6nvff4
	EG2DnjYLCSP8kg5Nsx/G5+32NN5HyaCGt6UsWFKH3RwCxOFz0Hpvr5z5p7YxYfNlAi4W4k
	BmBpLxus5edFuMWwC5lnThYEG2vIYq4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-615-gqBS4vqJORuYR2bbnkz6ug-1; Fri, 21 Apr 2023 05:40:45 -0400
X-MC-Unique: gqBS4vqJORuYR2bbnkz6ug-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8AC84811E7C;
	Fri, 21 Apr 2023 09:40:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A6E852166B33;
	Fri, 21 Apr 2023 09:40:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0B00F1946A4A;
	Fri, 21 Apr 2023 09:40:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 21 Apr 2023 11:35:45 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: OT: Could someone from outside South Africa try to install
 iSinkwe?
MIME-Version: 1.0
Message-ID: <mailman.2160.1682070035.283959.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Good day,
We at the Voice Computing research group at the CSIR have released an 
Android app called isinkwe.
It is an epub3 reader supporting media overlays.

I would like to verify that it is installable from another country than 
South Africa.
It is a free install.
Just search for isinkwe in the playstore.
It works, but is still beta software.
It will likely be discussed at a conference in the Netherlands if the 
paper is accepted.
People can answer me off-list if they like.
TIA, Willem


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

