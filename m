Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 867A5401102
	for <lists+blinux-list@lfdr.de>; Sun,  5 Sep 2021 19:27:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630862877;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wnsVFFFSdGqAObLT5hf41Ou/XhoF+Orf3Wz/DeIAunY=;
	b=hD+wtUxyZfoIIhM2mHDgwPCeNl2cWAThd7PGtB4cw9yhvH1ov6XbovB6p95VmbfdcCMdRm
	70xYnrDu1f3XIIFd8s/hxPIqrlkociMZGQepRwsC5mDHfCC/FLYstX/AfOOb7aMT+xOPl2
	1eNn6J1yUE4IHQ5+myBBenBAtXbEYSg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-485-qq59FhVINNCfpnUvvT41zw-1; Sun, 05 Sep 2021 13:27:55 -0400
X-MC-Unique: qq59FhVINNCfpnUvvT41zw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3C0FB1883525;
	Sun,  5 Sep 2021 17:27:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9CBEE60BF1;
	Sun,  5 Sep 2021 17:27:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BBCCE1809C98;
	Sun,  5 Sep 2021 17:27:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 185HRgjK002485 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Sep 2021 13:27:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A56012160298; Sun,  5 Sep 2021 17:27:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9FF1C2160294
	for <blinux-list@redhat.com>; Sun,  5 Sep 2021 17:27:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CEB69100B8C0
	for <blinux-list@redhat.com>; Sun,  5 Sep 2021 17:27:39 +0000 (UTC)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
	[209.85.210.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-135-OJcw5SuIPOeKuo3nzPoacw-1; Sun, 05 Sep 2021 13:27:38 -0400
X-MC-Unique: OJcw5SuIPOeKuo3nzPoacw-1
Received: by mail-ot1-f53.google.com with SMTP id
	c42-20020a05683034aa00b0051f4b99c40cso5781793otu.0
	for <blinux-list@redhat.com>; Sun, 05 Sep 2021 10:27:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=sI0vOj4pzg1TIJD+oPRf+2V62y4DiKQq40cXtrcdeZ8=;
	b=HhYj/nnJYlA8ZZrY8p4hmi59htVa9YGgpres2SKpiFe4/MFAUDyaKw60edfYh00shR
	1UWq89yCldgK/uwnfqQWvisF8EX3jXBnM4SZuVDoqzyQMk/18/+2MOBHKWUYzQrMzL5S
	XYSA5MzTPzz9kJXaj9srN5jbbCIyF9ZMHYlbtZ3FpLK9REHhuDLfvVbb/aKK+J4i2j77
	k15ORqKBEfH/JiYzE+Z1iuZRh+0nai8Lss0Vuh41hVxiuVJSOUeAKX9nTYY7PClWQ0s2
	JrYooHS4tidsWOXgjFPxRlXmenglQ7xB+wH8rgw5OMZ4v9Ogi5WQ0iJjnrAt0Vtx/NM8
	Ve5w==
X-Gm-Message-State: AOAM533zh4eFE2mulmVHT9Y5CC1AlQa5z0cGbKbPd+zTU1LDvcVsAmmL
	LWuXN6eOPktmLZPeBO8M+WGgrrhB2JLNKQ==
X-Google-Smtp-Source: ABdhPJzJWwddE3p2fkxoMMqKkjR2owjBdER+NbVLIR8VuLjKXqljI8oa8VDxKo2EV9zvxLp+jW2onA==
X-Received: by 2002:a05:6830:4411:: with SMTP id
	q17mr8160392otv.48.1630862857334; 
	Sun, 05 Sep 2021 10:27:37 -0700 (PDT)
Received: from smtpclient.apple ([2600:1702:20f0:4420:96c:cc9f:c84f:82fa])
	by smtp.gmail.com with ESMTPSA id
	x198sm1167787ooa.43.2021.09.05.10.27.36 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 05 Sep 2021 10:27:37 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: No GNOME Terminal on Jenux?
Date: Sun, 5 Sep 2021 13:27:35 -0400
References: <e532d780-aba9-1a5b-64f6-880ade71e38b@gmail.com>
To: Blind Linux <blinux-list@redhat.com>
In-Reply-To: <e532d780-aba9-1a5b-64f6-880ade71e38b@gmail.com>
Message-Id: <18C382B6-0C05-4660-8ED0-29BCA802BACF@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 185HRgjK002485
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I think this is a general prob;em in arch as I have run into the same problem and have not found a work around for this.  Thanks.

Matthew



> On Sep 5, 2021, at 12:33 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Greetings!
> 
> 
> I installed Jenux with GNOME, and find that the resulting system has no usable GnOME terminal.  Whether I try starting it with, "gnome-terminal", in the 'run' dialogue, or select it from the overview, nothing happens.  I also tried getting a talking console on tty2, and find that such consoles don't speak.  How can I get a talking terminal or console on this system, besides reinstalling and choosing Mate?
> 
> 
> 
> Thanks,
> 
> 
> 
> Dave
> 
> 
> 
> 
> -- 
> Sent from Slint GNU/Linux.  https://slint.fr/doc/HandBook.html for info
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

