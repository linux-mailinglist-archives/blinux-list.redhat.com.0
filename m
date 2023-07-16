Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A44B754E94
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jul 2023 14:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689509526;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6kjzQcTzU4Na4vtWx8JYSNtdxXKVioHvLqDXokVOEtM=;
	b=ZuLtUs1void5X0UxVyGh/o6bLHO6wDDk3wESKgDiWOiCS7kHR7ge8p7KpxgkhoJV1iYZ+0
	qYCJVc9q70Ld1PUbWpTzfZfV/3PiLOMXkghwmHnXmO1qs8xoxzxys+d+LagDwcTClURyq3
	MQG1lgDLA5MxX/dhoY8rOGq/CX6/X0U=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-586-LbB97GibNIKFczxadZyR5A-1; Sun, 16 Jul 2023 08:12:02 -0400
X-MC-Unique: LbB97GibNIKFczxadZyR5A-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3A8A5185A7A2;
	Sun, 16 Jul 2023 12:12:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 13930492B02;
	Sun, 16 Jul 2023 12:11:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6484419465A0;
	Sun, 16 Jul 2023 12:11:53 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Attention chime: the podcast client
Date: Sun, 16 Jul 2023 07:12:18 -0500
MIME-Version: 1.0
User-Agent: POP Peeper Pro (5.4.6.0)
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:KVOJrhEe0qE=;+6Wo0CNS1CWwCj2+Ri3X7dCdbWk
 fpzoB/migqsBRUq1q1SPTG0KRl5yxUQEiVxur3FwRIpVk0CMqJiPf4wmvR+3nnUyeouqCd4c0
 h5p9e4qgj5Jagt/f5s8TQQiHL+g+RwIQ5vHyqHfnZ9QbnULK9yemy9A00U8xEcGMjw83GWmbv
 qnW2PWkqFC5XIA7LuGOya84PinHuC7X4ugKwCECiwGdWQkhlgMMvmsjg1MXlfF55D2hFUWSQN
 7FBlMnwNp9AytszIytR8sz6F3UMe5+9ImWL/7lvrurdC5RbAld5fnLrXSk9ugQt74PqHbj9Bd
 qppyh0Y+g4vpZvx0SYSDO87cEsAYcE87oDjS0pyGNNH8YkR7rxMO57MNNaHi40dbvB0xtXPou
 4iclbLy45YUvBQFGign/iokz0lQvj4wTx+4Otyww4X32UbPmjYB4VrtBzZXcvHpPkwayhznf9
 jO3HEHM3xTJT629/elygDp3DH6Xbb9WnhNdYah9ts80EcYLLYGNMEOOExN4HQtQS84oNgBdrY
 UTusJNxSOFelyYIP14uSLDMLoZrur2yLWniOYIkgjaW+492t9o9Aas7CX2o6EfyJKxWfwDrXG
 R88vxzQW9xiFdCvsGp1tPUx54NOKvpZ7BSmTJOEkVz4BNHJo5HSc8LpT+fCGSt5UumbCJRPgQ
 x4OJepwUzYD5WagDhL1x+8r1m3zzQh3cPnJUWaDmW5c4gfiQXtBIE+YN1tlrX772BD+9JfRKh
 hehxcYJaZRzJRIyAAVUv2A9iyudrlm5PfUCAmXB+9/mDJ9E8mz6ZPs3kznUFvULPFaTqFieaM
 DVUev8N/Ne3A6mUBFWgDjJ0qRDl4Vbix55jOc6PX1nO0TxlMdrDxzYygUYlE3Ti4WOjkF3gcP
 l7C5KqT8XgIm2KajvwQ5uz3EKYQdSG9Jb9cQ3oF8qWW+kv7O4QbKxAiuyleiXYNON/8fpqCw5
 UjWxt+5iHBPk/oD08FmxpjFRxUE=
Message-ID: <mailman.119.1689509513.687817.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

A couple of days ago you posted something about a podcast client. Do you have a tarball so we can build it?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

