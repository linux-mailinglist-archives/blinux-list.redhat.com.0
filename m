Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AAECC5FA455
	for <lists+blinux-list@lfdr.de>; Mon, 10 Oct 2022 21:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665431465;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8DNZQAM0CuVPfo0y1wIgkt3e/2+g0e5mV3ESbu4pD8g=;
	b=SH7q0wxz2EfD3on3cl/hnDYNHRmHXrsJTJzUGB+1jPR/ToTNnJifTwzQSyizJqeB8H98lV
	I9pdQ861kRoi5AS6ggZnx5qRG4oEy5/8GHagO4tYRRY5O2q1VoNHADCT6yaP+tArtQuPgp
	x8+/c+WeQQgGkB7sudFx/X1lMnnyYQk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-512-mfhOPUtCOE2Fm5kwbXJywA-1; Mon, 10 Oct 2022 15:51:02 -0400
X-MC-Unique: mfhOPUtCOE2Fm5kwbXJywA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7575A858F13;
	Mon, 10 Oct 2022 19:51:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9FA6D145BF00;
	Mon, 10 Oct 2022 19:50:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 300761946A48;
	Mon, 10 Oct 2022 19:50:57 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 10 Oct 2022 15:50:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Fegora (was Re: TDSR?)
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.6579.1665417367.6077.blinux-list@redhat.com>
 <mailman.6597.1665417915.6081.blinux-list@redhat.com>
 <mailman.6601.1665418715.6081.blinux-list@redhat.com>
 <mailman.7185.1665419482.6076.blinux-list@redhat.com>
 <mailman.6853.1665423932.6082.blinux-list@redhat.com>
 <mailman.6257.1665425449.6074.blinux-list@redhat.com>
 <mailman.6598.1665425923.6077.blinux-list@redhat.com>
 <mailman.6894.1665427256.6075.blinux-list@redhat.com>
 <71f073b5-00ae-41a0-445d-dc466988f81a@free2.ml>
 <mailman.6266.1665430552.6074.blinux-list@redhat.com>
In-Reply-To: <mailman.6266.1665430552.6074.blinux-list@redhat.com>
Message-ID: <mailman.7216.1665431456.6076.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Looking at the Kickstart files that build Fegora, it looks like it will 
do what we were trying to do with Vinux before Luke was no longer able 
to work with it. The idea at that time was to merge Vinux and Sonar 
projects and to move the resulting merged project to a Fedora base. And 
it appears that this is pretty much what is now Fegora. I see a lot 
going on here that is similar to what those of us who worked with both 
Vinux and Sonar at that time were trying to accomplish.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

