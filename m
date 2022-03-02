Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DC44CA5C2
	for <lists+blinux-list@lfdr.de>; Wed,  2 Mar 2022 14:18:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646227100;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pACSnT5gMAPOzBxuXsUHANhVi+T7POskTsO6g/OVvyE=;
	b=fR2ICEb8yWKsMoUT526gZawRXtWZpRhn1J4W01pqWb5tR3iSued7+kqx6eWp5H3gbD9W3E
	+A4PDEeq780KR9hrCLGcn4VCTYxoirOjkgFteZfoXDMXTqgyxKQQheDlehGZ0m07o9fpWc
	bav//D2MOpnGS5A2tw3C7FfIxg4oTaM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-657-JI9wptvLMYGK4WUX9NPELw-1; Wed, 02 Mar 2022 08:18:17 -0500
X-MC-Unique: JI9wptvLMYGK4WUX9NPELw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CB1B11006AA7;
	Wed,  2 Mar 2022 13:18:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A99A883584;
	Wed,  2 Mar 2022 13:18:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 128FD1809C98;
	Wed,  2 Mar 2022 13:18:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 222DI3GQ015543 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 2 Mar 2022 08:18:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 67C7579AB; Wed,  2 Mar 2022 13:18:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 626DB778B
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 13:18:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 647A6801E8D
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 13:18:00 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-637-5VPhIi9LNgunKkt7WRjrEg-1; Wed, 02 Mar 2022 08:17:58 -0500
X-MC-Unique: 5VPhIi9LNgunKkt7WRjrEg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K7vn21Xzwz2qdw
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 08:17:58 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K7vn21Xd3zcbc; Wed,  2 Mar 2022 08:17:58 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K7vn219Z6zcbP
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 08:17:58 -0500 (EST)
Date: Wed, 2 Mar 2022 08:17:58 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Any progress on .pdf viewing?
In-Reply-To: <a35cb12d-cced-b826-a18b-715945c92717@free2.ml>
Message-ID: <6eaae389-1b23-4276-5f2-91a678ef8682@panix.com>
References: <Yh9aEWNufoEE0Bvp@waffles>
	<a35cb12d-cced-b826-a18b-715945c92717@free2.ml>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Correct use of an external command in a lynx configuration file can
arrange for pdftotext to be used by lynx so pdf files can be read by that
browser too.


On Wed, 2 Mar 2022, Linux for blind general discussion wrote:

> Both Evince and Atril can read pdf files. Firefox and most Chrome-based
> browsers are also able to read them. Usually though, I just run pdftotext on
> the file and pop the resulting file into the text editor of choice.
>
> pdftotext -raw <filename>
>
> usually works best, and generates a text file in the same folder as the pdf
> file, replacing the pdf extension with txt. The pdftotext tool and other
> similar converters are found in the package usually called poppler-utils, and
> I haven't yet seen a distro that doesn't include that package. These are all
> the options I am aware of currently.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

