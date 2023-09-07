Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2627972F2
	for <lists+blinux-list@lfdr.de>; Thu,  7 Sep 2023 16:04:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1694095469;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gvzz15YZIKmRb5lIZPawgLyr3A78AJjJGKRA4sVX+9E=;
	b=UdaOp4/dgByQlXvUfz5vttn7s9R5yFsLoRP5gSvG5L4eafkLTteEy4B514NOMPpThf6Nnc
	oU2GhXdbMx+MOjyusSDU00MRm6CQEF3sB+6LdFvQqqJ+IOSPJCbKr0XLlyGtAsZcI2EsvV
	cWlEn1j0ALhO7JRtWfFwgiaHRaoseXA=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-381-meucfs-vMEO8TztfKYW4UA-1; Thu, 07 Sep 2023 10:04:26 -0400
X-MC-Unique: meucfs-vMEO8TztfKYW4UA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 30D97282052C;
	Thu,  7 Sep 2023 14:04:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 062572026D76;
	Thu,  7 Sep 2023 14:04:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6050719465A2;
	Thu,  7 Sep 2023 14:04:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: <blinux-list@redhat.com>
References: <mailman.1625.1694094913.353787.blinux-list@redhat.com>
In-Reply-To: <mailman.1625.1694094913.353787.blinux-list@redhat.com>
Subject: RE: RHVoice on Ubuntu
Date: Thu, 7 Sep 2023 15:58:29 +0200
MIME-Version: 1.0
Thread-Index: AQIRRi+aZHDxRzIQsOWevvIYpU394q+gmj7g
Message-ID: <mailman.1550.1694095462.353792.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: pl
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Vojta,
Please compile it manually.
All instructions are available in the github repo.
Thanks!
Zvonimir

-----Original Message-----
From: Blinux-list <blinux-list-bounces@redhat.com> On Behalf Of Linux for
blind general discussion
Sent: Thursday, September 7, 2023 3:55 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: RHVoice on Ubuntu

Hello all,

is some way to install RHVoice to Ubuntu Mate 22.04 on Raspberry Pi? I would
like to use it and if my friend tested it, he had problems to see voices in
Orca. It was installed, but invisible.

thanks a lot.

Best regards

Vojta.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

