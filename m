Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CF03A69FA6A
	for <lists+blinux-list@lfdr.de>; Wed, 22 Feb 2023 18:50:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677088205;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=smGenxwmql8mNQ9zvJaOmfdoM3qc1XS/aLkFPcfJG4E=;
	b=fHqydKIR8khdFpxzyhTdDcEe2+EvgHiJCCk9k57ZIGlApBxK4q6pyyaDDj+ceE2jRwkhfA
	4srORyG0Yi6qQ19F3iwLU51o+Mf0N0e6s5e8Rh5Q/ASa/f4Waz5PX3r20dF7pI+yxRqmpn
	yDBG9MaT60ZojEDGIcIeyQ5QN8Q/rww=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-142-GrF3ci3vMH2F7WztdTaXxA-1; Wed, 22 Feb 2023 12:50:01 -0500
X-MC-Unique: GrF3ci3vMH2F7WztdTaXxA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 735C080352D;
	Wed, 22 Feb 2023 17:49:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 155F6440DD;
	Wed, 22 Feb 2023 17:49:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CCEDA19465A8;
	Wed, 22 Feb 2023 17:49:58 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 22 Feb 2023 12:44:35 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [DECtalk] Report of a successful use of dectalk with graphical
 Linux. (fwd)
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.887.1677042909.686535.blinux-list@redhat.com>
 <mailman.988.1677043847.686540.blinux-list@redhat.com>
 <mailman.1140.1677079370.686543.blinux-list@redhat.com>
In-Reply-To: <mailman.1140.1677079370.686543.blinux-list@redhat.com>
Message-ID: <mailman.1802.1677088197.686542.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I see that the question has in fact been raised on the list, and I have 
added my understanding of things. I'm hoping that an update comes soon. 
Josh just posted to the Orca list saying that it's open source, which is 
technically incorrect until or unless we can get the proper permission, 
stated in the LICENSE file, that it is legal for us to build the source 
code and use the software. For now I guess I'm using it illegally LOL.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

