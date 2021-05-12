Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id A2D5037BCB6
	for <lists+blinux-list@lfdr.de>; Wed, 12 May 2021 14:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620823313;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NEKx/6iRSfKF6eCNcEMtEKtgNpcX47KcGCHtdc3mFWM=;
	b=XeoPGMi8fjT++1rDlamcDuwDlKbezCZqas9T3T82FK218UljoxWOgY/ZgGD9jkT/QW+wko
	9HKqf9ja/38N5kxHUitbCMna4ddE3SrTDhsAl4Jrp9goshl6NAx5vhwLcxOq4L9ZHxGTIH
	fSCPYZZ0IX9iiblO15MTD5DaHJXGlg0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-531-HGjeTwEdOvupOZoO1oOMfw-1; Wed, 12 May 2021 08:41:50 -0400
X-MC-Unique: HGjeTwEdOvupOZoO1oOMfw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9B28F80ED8B;
	Wed, 12 May 2021 12:41:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2170660CE6;
	Wed, 12 May 2021 12:41:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 65E0D44A68;
	Wed, 12 May 2021 12:41:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14CCeBmA025425 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 12 May 2021 08:40:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5435B2016672; Wed, 12 May 2021 12:40:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4FD622135F00
	for <blinux-list@redhat.com>; Wed, 12 May 2021 12:40:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C50CC8007AC
	for <blinux-list@redhat.com>; Wed, 12 May 2021 12:40:07 +0000 (UTC)
Received: from pta-smg1.csir.co.za (pta-smg1.csir.co.za [146.64.81.180])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-458-ECiJ24wdMr2DHp2IkHPiHw-1; Wed, 12 May 2021 08:40:05 -0400
X-MC-Unique: ECiJ24wdMr2DHp2IkHPiHw-1
Received: from pta-smg1.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	A2D5C2978CDD_9BCCA1B
	for <blinux-list@redhat.com>; Wed, 12 May 2021 12:40:01 +0000 (GMT)
Received: from pta-gwia2.csir.co.za (pta-gwia2.csir.co.za [146.64.54.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by pta-smg1.csir.co.za (Sophos Email Appliance) with ESMTPS id
	6251829761BF_9BCCA1F
	for <blinux-list@redhat.com>; Wed, 12 May 2021 12:40:01 +0000 (GMT)
Received: from marge.meraka.csir.co.za ([146.64.28.1])
	by pta-gwia2.csir.co.za with ESMTP (NOT encrypted);
	Wed, 12 May 2021 14:39:54 +0200
Received: from marge.meraka.csir.co.za (localhost [127.0.0.1])
	by marge.meraka.csir.co.za (Postfix) with ESMTP id D8BD84AB30
	for <blinux-list@redhat.com>; Wed, 12 May 2021 14:39:54 +0200 (SAST)
X-Virus-Scanned: amavisd-new at meraka.org.za
Received: from marge.meraka.csir.co.za ([127.0.0.1])
	by marge.meraka.csir.co.za (marge.meraka.csir.co.za [127.0.0.1])
	(amavisd-new, port 10024)
	with ESMTP id K4eiJOHYM_2r for <blinux-list@redhat.com>;
	Wed, 12 May 2021 14:39:54 +0200 (SAST)
Received: from willempc.meraka.csir.co.za (unknown
	[IPv6:2001:4200:7000:3:7a2b:cbff:fe9d:7520])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by marge.meraka.csir.co.za (Postfix) with ESMTPS
	for <blinux-list@redhat.com>; Wed, 12 May 2021 14:39:54 +0200 (SAST)
Received: from [127.0.0.1] (helo=localhost)
	by willempc.meraka.csir.co.za with esmtp (Exim 4.90_1)
	(envelope-from <wvdwalt@csir.co.za>) id 1lgo9a-0007nE-BY
	for blinux-list@redhat.com; Wed, 12 May 2021 14:39:54 +0200
Date: Wed, 12 May 2021 14:39:54 +0200 (SAST)
X-X-Sender: wvdwalt@willempc.meraka.csir.co.za
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Batch convert ebooks qustion
In-Reply-To: <3f911846-3ba1-131e-14fe-c41694c55c9a@gmail.com>
Message-ID: <alpine.DEB.2.21.1.2105121430470.29828@willempc.meraka.csir.co.za>
References: <3f911846-3ba1-131e-14fe-c41694c55c9a@gmail.com>
User-Agent: Alpine 2.21.1 (DEB 211 2017-05-04)
MIME-Version: 1.0
X-SASI-RCODE: 200
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,
First put all the epubs in a directory.
Then cd into that directory.
Then run detox. This is to remove spaces and other nasties from the 
filenames.
Install the detox package if required, then do
detox *
in the epub directory.
then do:
for i in $(ls *epub);do
textname=`basename $i .epub`
ebook-convert $i "$textname".txt
done
HTH, Willem

On Wed, 12 May 2021, Linux for blind general discussion wrote:

> So, I've a fun question. I bought a box set of ebooks that got delivered in 
> .epub format. I'd like to convert them to .txt, the ebooks are DRM free, but 
> I don't want to go through one at a time. So...
>
> Can I use ebook-convert, I can't do ebook-convert *.epub *.txt
>
>
> So how can I tell ebook-convert to take all the files of a certain type and 
> convert to my desired output type?
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

