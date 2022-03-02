Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9C14CA572
	for <lists+blinux-list@lfdr.de>; Wed,  2 Mar 2022 14:03:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646226217;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5yVFLrAH4QHyCHh7zsM+McVrfSG4l1HTsa5ITyr/3yk=;
	b=PIDeMO2f7emIM+NIyrQH37QF1ly21+JZQWiFRwoj0I05HJtCKJmOVE/HwnKj8gA+GoFk39
	FWODdx0iz3MnBTo9Ob6O6u9GSANebXq7oMh7K39ZNUuXe+AZGos/r9iLIQg/0oxzgAiJRw
	XoktYiDoh/+y0+NxOIhNvLBusdNS4Mg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-145-q6Fn1cEGPDGCb2Jv1lyptA-1; Wed, 02 Mar 2022 08:03:33 -0500
X-MC-Unique: q6Fn1cEGPDGCb2Jv1lyptA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F2FC5801AFE;
	Wed,  2 Mar 2022 13:03:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B9E2832B5;
	Wed,  2 Mar 2022 13:03:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 77BAF331CD;
	Wed,  2 Mar 2022 13:03:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 222D3DYI014187 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 2 Mar 2022 08:03:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5DFF57ACA; Wed,  2 Mar 2022 13:03:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 58A697AC7
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 13:03:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 811918038E3
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 13:03:09 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-77-uHr9NxUMNyaQslpPU6n2dQ-1; Wed, 02 Mar 2022 08:03:05 -0500
X-MC-Unique: uHr9NxUMNyaQslpPU6n2dQ-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id D168F1BBE0D
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 13:02:45 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id pk5lv3bF1-e0 for <blinux-list@redhat.com>;
	Wed,  2 Mar 2022 13:02:31 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d]
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:e826:5227:4681:6e2d])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id 1C7A41BB0A1
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 13:02:30 +0000 (UTC)
Message-ID: <a35cb12d-cced-b826-a18b-715945c92717@free2.ml>
Date: Wed, 2 Mar 2022 08:02:08 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Any progress on .pdf viewing?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <Yh9aEWNufoEE0Bvp@waffles>
In-Reply-To: <Yh9aEWNufoEE0Bvp@waffles>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Both Evince and Atril can read pdf files. Firefox and most Chrome-based 
browsers are also able to read them. Usually though, I just run 
pdftotext on the file and pop the resulting file into the text editor of 
choice.

pdftotext -raw <filename>

usually works best, and generates a text file in the same folder as the 
pdf file, replacing the pdf extension with txt. The pdftotext tool and 
other similar converters are found in the package usually called 
poppler-utils, and I haven't yet seen a distro that doesn't include that 
package. These are all the options I am aware of currently.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

