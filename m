Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A579B6C03B0
	for <lists+blinux-list@lfdr.de>; Sun, 19 Mar 2023 19:05:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679249110;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tcHLTaPCgMlXr5DhyihcAM5HInx9aECKpBVoyI0JDVc=;
	b=Z74Z4SBmMwfGauMNswA8R+k2vciTPdNB3guoao0c4dfUCuuJUjS73+zaiqFbQA+mC50PdV
	Uy9VKgCBMhpdeQmIVrs5x15d7u9Gv6J1Edl6Kojx9MKj8KAqPZKDgfD5l1PrtThSbMDAfq
	zDKdujMmDyzRMRhykAsQoqOy8dJYyPY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-537-YsV2TDi2NMq6c6q4a1SamQ-1; Sun, 19 Mar 2023 14:05:06 -0400
X-MC-Unique: YsV2TDi2NMq6c6q4a1SamQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A9ADE88B7A0;
	Sun, 19 Mar 2023 18:05:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B5BA840C83A9;
	Sun, 19 Mar 2023 18:04:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4BDF71946A54;
	Sun, 19 Mar 2023 18:04:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 19 Mar 2023 18:04:45 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Seamonkey 2.53.1X not working with Orca?
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.236.1679249091.636363.blinux-list@redhat.com>
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

So I've just run into this. Is it a my system thing,or an Arch thing, or 
did Seamonkey really go and cut out thins to make it play nice with Orca?

I'm on Orca-maaster, from AUR, Seamonkey from Arch's repos, and none of 
the Orca keys are working as far as navigation. I've gone with a bone 
stock install of Seamonkey and am now somewhat confused since I remember 
Orca working with previous versions of Seamonnkey in the past. The one 
thing I did not do, was try removing the .mozilla folder to force 
Seamonkey to remake a new default profile. Anyone else running into this?
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

