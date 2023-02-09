Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3264769103B
	for <lists+blinux-list@lfdr.de>; Thu,  9 Feb 2023 19:21:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675966870;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Vsdz+9hBuyP0K1lrIlXRPZvMaJi223NYkmHKH91vtPE=;
	b=VJ+3xfGqZh/1R+mcvK3gba7dXqfIo1aoRSnemwS8c96LRI6jc1kUv7DirF0OnaYEIpzMqN
	ozgN2uQ/ib49OoQZcQQB/poMslOsiZR4326NjdsBfl2HszAva/6tU+pmIesDMRNj5xn5WW
	4V/1VN1yl+WGrQI+8tHkT55JjgR+aQU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-317-sS4b7F32OJuCPrkHPOB3PQ-1; Thu, 09 Feb 2023 13:21:09 -0500
X-MC-Unique: sS4b7F32OJuCPrkHPOB3PQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8C2453C0F426;
	Thu,  9 Feb 2023 18:21:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9121A40B40C7;
	Thu,  9 Feb 2023 18:20:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DAE011946597;
	Thu,  9 Feb 2023 18:20:54 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Thu, 9 Feb 2023 10:14:25 -0800 (PST)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Can I Launch Alpine on Startup with a higher Priority?
MIME-Version: 1.0
Message-ID: <mailman.5622.1675966853.8172.blinux-list@redhat.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi All: While I considered asking on alpine-info, I guess this is more of a 
generic Linux inquiree? Sure, I can use sudo renice to alter from 0 to -20  but 
I first must run ps -a and look for a process number which matches the 
console-and-application. I would really like to always launch alpine with a 
renice of -20, as it seems to behave a bit better while exporting binary 
news-group articles to a file. Ideally it would be nice if you could just run 
renice with a name of an application, but even worse, you wouldn't know what 
process number it will be useing. Thanks so much in advance for any tips.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

