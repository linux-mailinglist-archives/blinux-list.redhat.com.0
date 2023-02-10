Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A673F69154B
	for <lists+blinux-list@lfdr.de>; Fri, 10 Feb 2023 01:22:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675988544;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=N9xG7shMZABEViLEHvnoObVviapqVMv6mvmy1iXfUfc=;
	b=JBoJNaRoNHhVZ6F+iDvgQKHLV1TVSoLWRfZwVY38bpbGyrU6ot7ajGjXaSptQnj1Csc92r
	iaEvrWK4AT14/fKfKjjtzYx/VhUtMKrHElpMZLko8z7vo+Bd9FwiLyiSrRIMIb+qRDYOUU
	K71dBYNmrIIbYHIZrTTH438gelsAFUk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-375-O5m2sMuUOm-X_jlle3wLtg-1; Thu, 09 Feb 2023 19:22:20 -0500
X-MC-Unique: O5m2sMuUOm-X_jlle3wLtg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 011933C01DED;
	Fri, 10 Feb 2023 00:22:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4214E400DFA1;
	Fri, 10 Feb 2023 00:22:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C60751946597;
	Fri, 10 Feb 2023 00:22:17 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Thu, 9 Feb 2023 16:22:11 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: carbonyl: Chromium based browser built to run in a terminal
In-Reply-To: <mailman.5587.1675987861.8171.blinux-list@redhat.com>
References: <mailman.5886.1675981319.8177.blinux-list@redhat.com>
 <mailman.5469.1675986838.8174.blinux-list@redhat.com>
 <mailman.5587.1675987861.8171.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.5900.1675988537.8177.blinux-list@redhat.com>
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

I forgot to mention that when useing less to view that readme file, it says it 
might be a binary file. For some reason they have several line of html-and-src 
mentions before their instructions.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

