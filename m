Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A1755BDBE
	for <lists+blinux-list@lfdr.de>; Tue, 28 Jun 2022 05:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1656385431;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PGN8w2hLLzz3cavWdRoxqpHDv3+fq6pSn21cv9ZVotY=;
	b=XDRRWEgCQljp/PMaYsrST8QRi6yUhAnMETJWxzGELFhzFr/sC6JBtEtIp7oYBSXl9NCCO1
	U8x9ZGW2A3VzhbGZjNOOVszFuqSl3N2H9QktRDX7zoWbSk2Z6BNU8qHK3Nl8NEYqoCXWqt
	VhfXcKOOEKMgjZb5tAR8ToLcMRNI/Uw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-503-yN_n9xU_NS-BfHpfHBLTjg-1; Mon, 27 Jun 2022 23:03:49 -0400
X-MC-Unique: yN_n9xU_NS-BfHpfHBLTjg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CFCB2185A7BA;
	Tue, 28 Jun 2022 03:03:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1443D1415108;
	Tue, 28 Jun 2022 03:03:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 878AD1947054;
	Tue, 28 Jun 2022 03:03:40 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 27 Jun 2022 22:03:34 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Problem with lightdm
MIME-Version: 1.0
Message-ID: <mailman.28995.1656385419.111203.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Until about six months ago, when I booted up  lightdm would ask what user to log into and the password. It would then set up console 7, set the screen for this console to graphics mode and start  Orca. It would not affect the other consoles, so i could continue to use them in command mode, with brltrty. Now lightdm just sets the screen to graphics mode without asking anything. I have to use systemctl to disable it, so I can use the machine. 
How can I get the former behavior back? As it is, I can't use Mate at all.

Thanks,
John

-- 
John J. Boyer
Email: john.boyer@abilitiessoft.org
website: http://www.abilitiessoft.org
Status: Company dissolved but website and email addresses  live.
Location: Madison, Wisconsin, USA
Mission: developing assistive technology software and providing STEM services 
        that are available at no cost


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

