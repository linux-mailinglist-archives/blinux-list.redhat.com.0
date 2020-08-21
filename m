Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 8DF1224C97A
	for <lists+blinux-list@lfdr.de>; Fri, 21 Aug 2020 03:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597972465;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=icPnmabmhexLdM0vspiN01fwRFyvT1up7JqAbYkyZ78=;
	b=Hbxgk4I/qT+E3u6Qbx5W6pWd3jF3XOHoR+4QC9YEKReIdgEa4lSZgk3Mju+R924LJYq9WB
	/3lmQvs3sZLQP/ub8rUCb3QAegMU9K/jDCMVqq/FP6QAaYmF0uNp/FMINcsCDnwYyAZDZs
	TLLItGmiEka9qhvAU3p/1rIz3yL33d4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-16-kEBw1lU7PSuQsEOk7Xy0Rg-1; Thu, 20 Aug 2020 21:14:23 -0400
X-MC-Unique: kEBw1lU7PSuQsEOk7Xy0Rg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BC7A8186A575;
	Fri, 21 Aug 2020 01:14:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B41B19C78;
	Fri, 21 Aug 2020 01:14:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 67658662BB;
	Fri, 21 Aug 2020 01:14:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07L1DY22011056 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Aug 2020 21:13:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 785F72166BDD; Fri, 21 Aug 2020 01:13:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 668602166BA3
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 01:13:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0497E8EDF00
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 01:13:32 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-349-LrvapYOPOg2U5rNufuNJJQ-1; Thu, 20 Aug 2020 21:13:27 -0400
X-MC-Unique: LrvapYOPOg2U5rNufuNJJQ-1
Received: by mail-wm1-f44.google.com with SMTP id u18so285500wmc.3
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 18:13:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=AxAL1DmLSIExltE8+au8QHNUVihXFHodU4I7vYIDDdM=;
	b=LnEmf75QR4Kx5BPAJ8Tq7tLMS8LEG56tIZyPVJ0NeflNATfOGmXAEdUf455i4e13JW
	QiqSHGig6oD8JUYixV/oA2AFIliU5l7N/iW+9C40lgjD7lYuEzCCR3iCYcCSmwYI2XBP
	SaaWtu10Gc+DYg5SPkIW9ULz32DKjduzE6SnCRiit/GqptAhzF1hh51WHN/1P8u+Za8L
	l0xCL+75/LaiQ4lJdiFzyxVFi9J4EbfEqqV8wGlcDwvJLTdd559G+C4qbkR/Iz7V/jEE
	nCSr6F7JIZ4rrWUmfMUxJW7AmIp6h/8jatqEGdatc+Bj26dC5QP6D+ramm0kMCmpxKvp
	sSIQ==
X-Gm-Message-State: AOAM532Xt0LhMQEsZOyra4urnPVM0p7iUqilknCSEuYF9hPt2tExxDmL
	NfEI5n/aQ0+X4N+sIumCJdStkPZxCDFlYw==
X-Google-Smtp-Source: ABdhPJyEm1Ux8g3JXxfjgGm4O68wnJOIvjfL6Im1GVJum4XQwCAyDDBXOLKggvV/ejjZf8GKobdUXw==
X-Received: by 2002:a7b:c845:: with SMTP id c5mr430935wml.180.1597972406542;
	Thu, 20 Aug 2020 18:13:26 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::433?
	(2606-a000-111a-8d0a-0000-0000-0000-0433.inf6.spectrum.com.
	[2606:a000:111a:8d0a::433])
	by smtp.gmail.com with ESMTPSA id u6sm950223wmc.12.2020.08.20.18.13.24
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 20 Aug 2020 18:13:25 -0700 (PDT)
Subject: Re: Accessible Distros for a beginner?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
	<b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
	<alpine.DEB.2.23.453.2008201331030.998121@chime>
	<e1a425ec-6214-7f61-89cf-cf4d4fb0f511@slint.fr>
	<alpine.DEB.2.23.453.2008201440380.1109151@chime>
	<03d49f1b-c058-eac9-f0d4-93719f59e6ee@gmail.com>
	<e73a7097-f12d-a4cd-21ef-101f35439a2d@slint.fr>
	<CAO2sX33Q8kPKn6qAaQtF+Z9jYGdxiEUJXQFnc3bKQDfDnrWYOw@mail.gmail.com>
Message-ID: <99a3d6ab-1abf-cf35-42ab-84b9fba7f4c2@gmail.com>
Date: Thu, 20 Aug 2020 21:13:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX33Q8kPKn6qAaQtF+Z9jYGdxiEUJXQFnc3bKQDfDnrWYOw@mail.gmail.com>
Content-Language: en-US
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

git clone http://openblinux.de/repos/sbl

did get me something. The last push was in 2013 though. I'm not sure if 
there's any later source, as the tarball listed version 3.5.0. My guess 
is that this isn't much different from the version in the git 
repository. According to the documentation, it has very limited braille 
display support, but it can speak using MBROLA.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

