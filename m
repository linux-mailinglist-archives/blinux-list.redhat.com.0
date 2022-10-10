Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE955FA386
	for <lists+blinux-list@lfdr.de>; Mon, 10 Oct 2022 20:44:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665427471;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YQguQH3pSETYj+YOaSvCOlQtDD8JbWHvEVjwFIy5XE8=;
	b=NX6tSFQIazvtrgpOzuvQGudH6/x3JQ09ekiIv3+Hl5Zn8tJX3Yt4ZhvL8VpjIODnF3qVr0
	/jPDwvP1ARkCPSlRAqMqmd7xRpwibLu2t3lT4cTDFD0m5XIKClnZww05ltftV64aeHlteM
	H3PPjnC9FyLNViqld2jOvHhzxl691xg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-433-11DDd-BCMvO9j4SQRBzJgA-1; Mon, 10 Oct 2022 14:44:28 -0400
X-MC-Unique: 11DDd-BCMvO9j4SQRBzJgA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3F3D0830FAF;
	Mon, 10 Oct 2022 18:44:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 275CB215688F;
	Mon, 10 Oct 2022 18:44:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B641C1946A48;
	Mon, 10 Oct 2022 18:44:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 10 Oct 2022 14:44:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: Is there a Fedora Espeakup Package?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.6271.1665338721.6083.blinux-list@redhat.com>
 <mailman.6427.1665341560.6078.blinux-list@redhat.com>
 <mailman.6276.1665342112.6083.blinux-list@redhat.com>
 <mailman.6652.1665345960.6080.blinux-list@redhat.com>
 <mailman.6499.1665347033.6081.blinux-list@redhat.com>
 <mailman.6875.1665417028.6075.blinux-list@redhat.com>
 <mailman.6596.1665417295.6081.blinux-list@redhat.com>
 <mailman.6599.1665426970.6077.blinux-list@redhat.com>
In-Reply-To: <mailman.6599.1665426970.6077.blinux-list@redhat.com>
Message-ID: <mailman.6545.1665427464.6078.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I had heard of brltty, butt never have known what may be done with it.


Well, usually brltty is thought of as the interface between your 
computer and a refreshable braille display, and also allows screen 
readers to provide braille output via its brlapi functionality. But 
brltty can act as a stand-alone screen reader in text mode as well. I 
don't believe brlapi provides speech output, since the applications that 
would use that feature are probably already using speech-dispatcher 
directly, but brltty itself when running as a system service does in 
fact output to speech-dispatcher, and I believe it has keyboard 
shortcuts that do not require braille display input for its screen 
review functionality, among other screen reader functions. That said, I 
probably should try this myself before I just let my fingers keep 
running wild.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

