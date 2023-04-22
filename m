Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A1E6EB8B2
	for <lists+blinux-list@lfdr.de>; Sat, 22 Apr 2023 12:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682161142;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=06mgR4zpUuACb3uY2On+hTOjt/f0cEHzkgwndQsDM5c=;
	b=RJeLFcaqFP8s/b4WdiFFq/hv2Ul4tSMsZ6mgVgRfFoqAu1cBgZxlOzOXGwL1UPw4TV7NuU
	mcWx6X266pMwxKt1OZQScJZNRbFRp4bBm8qunyLQhL1H1wvwN/GYKO9yfZHe4FhsyGWh0i
	11C2APiXZx9r5aOJJSWJFfvJToLW4Ts=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-657-7b7vjE1rNxe1ZEdRaB7B8g-1; Sat, 22 Apr 2023 06:58:58 -0400
X-MC-Unique: 7b7vjE1rNxe1ZEdRaB7B8g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 31531811E7B;
	Sat, 22 Apr 2023 10:58:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1A71135453;
	Sat, 22 Apr 2023 10:58:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 772251946A46;
	Sat, 22 Apr 2023 10:58:51 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 22 Apr 2023 12:58:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: blinux-list@redhat.com
Subject: Samba file sharing with external access
Message-ID: <mailman.52.1682161130.2351825.blinux-list@redhat.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

I use Samba for sharing content of my external 6 Tb hdd for my local 
network. Now, I want to redirect my hdd to all members of my family, but 
it requires public access. I have public ip address. So how is the best 
way to configure Samba for access with my public ip? I have all users 
and passwords created and I will use Ubuntu and I'll try to use 
gadmin-samba package, but I have no experience with this type of 
sharing, so if you have some tips, you can give them.

Thanks,

Pavel


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

