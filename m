Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9D96D322295
	for <lists+blinux-list@lfdr.de>; Tue, 23 Feb 2021 00:20:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614036027;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=C+B791fNDM2r2yJljp5NbMjORdV33GVPBbeN3qZIt+o=;
	b=i3YCmujBqeja0jMcl26tO6cmNXlyN/oqaCBJDGxSVKrW8FoAzV11ZBdZFACZv2onNq6uhZ
	6TecYr5EyxIzTIKD5zjDgazUcKSgg6nrSvaTbG3eyIcApvYcJC8lPRsYEXzuFkTlH/fBlP
	14I2q/B1l2EBFDpnlzNmPZ1GSQr+TnE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-266-d1V1Mso9O1ekRaeIl-WG5w-1; Mon, 22 Feb 2021 18:20:25 -0500
X-MC-Unique: d1V1Mso9O1ekRaeIl-WG5w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4CBDE8030CC;
	Mon, 22 Feb 2021 23:20:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8759E5C1BD;
	Mon, 22 Feb 2021 23:20:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2A1F818095CC;
	Mon, 22 Feb 2021 23:20:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11MNK9xU029393 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Feb 2021 18:20:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3CB0A9E9B; Mon, 22 Feb 2021 23:20:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 376C39E8D
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 23:20:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D709C85A59D
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 23:20:06 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-235-9j-cwvx9NYSRuJzYaBSiPQ-1; Mon, 22 Feb 2021 18:20:03 -0500
X-MC-Unique: 9j-cwvx9NYSRuJzYaBSiPQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Dkynv2MzQz1nvr
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 18:20:03 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Dkynv1Z0Pzcbc; Mon, 22 Feb 2021 18:20:03 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Dkynv1DXqzcbW
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 18:20:03 -0500 (EST)
Date: Mon, 22 Feb 2021 18:20:03 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: curl vs. wget
In-Reply-To: <20210222161303.5791a145@bigbox.attlocal.net>
Message-ID: <alpine.NEB.2.23.451.2102221819020.24419@panix1.panix.com>
References: <alpine.NEB.2.23.451.2102221641030.18367@panix1.panix.com>
	<20210222161303.5791a145@bigbox.attlocal.net>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Axel does parallel downloads splitting a file by default into 6 or 7 parts 
and downloading each part simultaneously then recombining them at the end 
of the download.


On Mon, 22 Feb 2021, Linux for blind general discussion wrote:

> Tim here.
>
> For large file downloads?  Using curl & wget are likely about the same
> for the stock usage.
>
> However, for multiple files, you can use curl's "--parallel" and
> "--parallel-max" options to download multiple files at the same time.
>
> The curl blog mentions other tools that do "same file splitting"
>
> https://daniel.haxx.se/blog/2019/07/22/curl-goez-parallel/
>
> but doesn't mention any particular such utilities by name.
>
> -Tim
>
>
>
> On February 22, 2021, Linux for blind general discussion wrote:
>> Has curl got any speed advantage for large file downloads compared
>> to wget?
>> I know about axel and want to leave axel out of this comparison
>> since some web sites block axel though for large files when axel
>> can be used it's well worth the time savings.
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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

