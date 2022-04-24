Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFB250CE1F
	for <lists+blinux-list@lfdr.de>; Sun, 24 Apr 2022 02:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650760109;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fsz1c/+bafwWCmd5Gz88/RFsnyldjfSBJwGU3cVvy18=;
	b=F15L/SpgaFftvw8D0XZlZFIrk54Faqh6iabKiUb7FfZIVPLrtiLOoz8K4Aw0Rw0cnEz1jn
	ZUeTrK5Ie75pqQWnND2cTXSqeaqOIEaxeiBlDawg4uTZoH+ZW9ybzEHOOD9kSXBWwuujBZ
	NOsZYRUJcAQ7geiUVw6YXXC7kD43rT0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-570-_yEQC_pXMD-6NaWQyoqQ9g-1; Sat, 23 Apr 2022 20:28:26 -0400
X-MC-Unique: _yEQC_pXMD-6NaWQyoqQ9g-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 93DFF3806702;
	Sun, 24 Apr 2022 00:28:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5D64D57CDA6;
	Sun, 24 Apr 2022 00:28:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id ED79E1940355;
	Sun, 24 Apr 2022 00:28:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 23 Apr 2022 17:27:55 -0700 (PDT)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: BackSpace Beep in Debian Testing?
MIME-Version: 1.0
Message-ID: <mailman.10438.1650760093.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi All: I have a newer laptop. An only way of having consistant sound is by 
running Debian Testing instead of Sid where I had little or no sound. However, 
I have no backspace or tab-completion beep in either tcsh or bash. I installed 
beep. Supposedly there is a way of installing "pcspkr" but I cannot find it. 
Can any1 please inform about how to enable beep in console? In searching, there 
are references to a bell which is now disabled, but is found in accessibility? 
If this is accurate, please inform what I do next? Typing a controll+g does 
nothing. Thanks so much in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

