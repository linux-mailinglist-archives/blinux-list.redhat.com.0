Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3584DD294
	for <lists+blinux-list@lfdr.de>; Fri, 18 Mar 2022 02:55:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647568532;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EJVM4cpvLbRTkMxVmcZ8WAYFpClqZH1KmnzqyEEIcj4=;
	b=MifS/vmFiN69xh/ley+FPZHWuXo5SGrI7IQvXs2ar+fjo2G1VS4KF1+1qxQz72zXjvKNeg
	K82yeWsfWQAmnXWiddMluujgXQ3RGq1bytEjtaoGiFI+F0U/OHRrKL7ubDjZG0b09m/DzC
	uvdsPlx8n2oVpY15X0yX8Eek86ZwwfU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-88-9KSUjzF9PimdfyUp-TfL7Q-1; Thu, 17 Mar 2022 21:55:28 -0400
X-MC-Unique: 9KSUjzF9PimdfyUp-TfL7Q-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D30E885A5BC;
	Fri, 18 Mar 2022 01:55:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6D66B401DBE;
	Fri, 18 Mar 2022 01:55:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C60AE195FD7E;
	Fri, 18 Mar 2022 01:55:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 17 Mar 2022 21:55:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: MP3 Tag editor?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2712.1647554312.111205.blinux-list@redhat.com>
 <mailman.2790.1647555545.111203.blinux-list@redhat.com>
 <mailman.2906.1647556769.111202.blinux-list@redhat.com>
In-Reply-To: <mailman.2906.1647556769.111202.blinux-list@redhat.com>
Message-ID: <mailman.2934.1647568523.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

You can try something like discogs.com to find track information for 
disks that you couldn't find in cddb, although you will need a starting 
place, like the CD title, the artist, or maybe a song title you know 
that you can pop into the search box. You can then fill in the 
information and submit it to cddb, I think freedb actually, assuming you 
still have the CD. I'm not sure though what will submit to freedb, and 
getting this information may or may not be useful for automatic tagging, 
meaning that you may need to fill in your tags manually as well. Keep in 
mind also that discogs has lots of disks you cannot find in freedb, but 
I have found at least one CD on freedb that discogs knows nothing about, 
so depending on what you have, your mileage can certainly vary.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

