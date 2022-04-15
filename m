Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AB850255F
	for <lists+blinux-list@lfdr.de>; Fri, 15 Apr 2022 08:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650003279;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=05k6WFvYp+y8JjuiXFY8bn0DnqyvjoT4QdXXU6N6MT4=;
	b=baI0ikiANVzpFXbilg6ohL3l0yvPEnIzzYN6nGnbccPj2KFexGKKkIGYwgi9O/FxbKhaL3
	XGUoPPUh6/Z+DYA8K0fMqvbe1kJPbSzWfn73AljZxJq1Rz9BW7l4KFy4eEkn7KMkLc5BFo
	SR5hv+k9VX1Zaog6ZS6a8lWC7HFLHlk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-641-r9Zn7g6FPHarWXdhrlsBPA-1; Fri, 15 Apr 2022 02:14:35 -0400
X-MC-Unique: r9Zn7g6FPHarWXdhrlsBPA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 512FA1C05ABB;
	Fri, 15 Apr 2022 06:14:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BDE3D2024CB6;
	Fri, 15 Apr 2022 06:14:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 266D119451EC;
	Fri, 15 Apr 2022 06:14:33 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.8751.1649996850.111206.blinux-list@redhat.com>
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8343.1649887607.111209.blinux-list@redhat.com>
 <mailman.8428.1649888423.111203.blinux-list@redhat.com>
 <mailman.8385.1649917954.111207.blinux-list@redhat.com>
 <mailman.8642.1649947864.111206.blinux-list@redhat.com>
 <mailman.8751.1649996850.111206.blinux-list@redhat.com>
Date: Fri, 15 Apr 2022 06:14:23 +0000
Subject: Re: FYI - Command Line Programs for the Blind
To: blinux-list@redhat.com
Message-ID: <mailman.8769.1650003271.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I can't speak for anyone else, but I'm personally using a Vintage
2016, possibly 2015 flip phone and the only reason I ever connect it
to my computer is because that's the only convenient place to plug in
a USB A to microB cable for charging... and I'd have text messaging
blocked on my phone except my carrier stopped allowing text blocks
when texting went from something they charge a per message fee to
something with unlimited built into the base plan... and back when I
had a working eye and a smartphone(around Android 2.2 or 2.3), the
text messaging app was among the junk I threw out after rooting my
phone... and the only notifications on my phone are the spam I get via
text message, and clearing duplicates and spam calls from my call log
is easy enough directly on the phone(having a proper phone keypad
helps).

As for two factor authentication, whenever a website prompts me to set
such things up, I usually click the "not now" button when available
and wonder where the "not ever" button is. Bad enough so many websites
enforce password requirements that makes remembering passwords nearly
impossible, or which force setting security questions I'm likely to
forget the answers to, I don't like the idea of potentially being
locked out because my phone isn't on me and in working order.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

