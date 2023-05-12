Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E25B701247
	for <lists+blinux-list@lfdr.de>; Sat, 13 May 2023 00:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683932017;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aLQBebAMyk4NeBaU294uhS6+tbwThlrJuQ41W47/4zc=;
	b=WA/rSI0JHek2tgzooyern3I9OIs2tFDi91qZ9IupfH6wwe/GOcyC/v2T+6B1hEeik6zAE4
	5ZIqQNWFQGJb76/KAMxrmN8HLWJEvQB/kBhESnSXU8MuzJd/pRiHcHvDMf/6KXCfu5R8FI
	B9EF2qvZ2WAF6j0brjV0LFzYtNoVk/c=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-92-jiYKVKvZM02iISabmlYmJA-1; Fri, 12 May 2023 18:53:34 -0400
X-MC-Unique: jiYKVKvZM02iISabmlYmJA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 84C2E101A54F;
	Fri, 12 May 2023 22:53:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id ED0841121314;
	Fri, 12 May 2023 22:53:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2C2AA19451E8;
	Fri, 12 May 2023 22:53:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 12 May 2023 23:53:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Linux for blind general discussion <blinux-list@redhat.com>,
 Linux for blind general discussion <blinux-list@redhat.com>
Subject: Tolc nd Wine support?
Message-ID: <mailman.2353.1683932002.2822856.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

This is more for the WINE users, but....

This came up due to a game updating to use Tolc, and the discussion 
switly turned to kay, how do we get a workaround to make it run under WINE?

The game ships with a Tolc dll, as well as an NVDA dll. The NVDA dll 
isn't the problem, that can be worked around with nvda2speechd, but it's 
Tolc that is the issue. What is a good starting point to work around this?

Rastislav, I'm hoping you can look at this and help out, you cracked 
nvda2speechd wide open and came up with that after all

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

