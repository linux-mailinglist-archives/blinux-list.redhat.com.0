Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E8E4970BA
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 10:38:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642930732;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PbLrVupPGYqV78RrjaGkg61E9JyvmHypNiVvqtYja+0=;
	b=L9IrI3RdUX49Q54xE4xxwze0j5qmNrhHEv8ah+buq2i7r4D7d9Mabi/0FHpZivJn9K8XXo
	TDEyAP/87ws+WBOigw19CufcNQOTuPOEyq31tDSebZs6/aEZL/ijlIhpOAFcF4LfS/bT3v
	5vtFkePwfArRGm/fheEBWruZtHM7+qk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-44-ZGzIPjVaO-W7q4SLQsltYA-1; Sun, 23 Jan 2022 04:38:49 -0500
X-MC-Unique: ZGzIPjVaO-W7q4SLQsltYA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 183648143EA;
	Sun, 23 Jan 2022 09:38:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 91D367B014;
	Sun, 23 Jan 2022 09:38:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 604554BB7C;
	Sun, 23 Jan 2022 09:38:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20N9cb7N024051 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 04:38:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7B75F40F067; Sun, 23 Jan 2022 09:38:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 76C65401E7A
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 09:38:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3811D2A38D16
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 09:38:37 +0000 (UTC)
Received: from fgw22-4.mail.saunalahti.fi (fgw22-4.mail.saunalahti.fi
	[62.142.5.109]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-287-XZPYAlv-N9Wp6r4FIz2B7g-1; Sun, 23 Jan 2022 04:38:35 -0500
X-MC-Unique: XZPYAlv-N9Wp6r4FIz2B7g-1
Received: from nkl.local (81-197-9-41.elisa-laajakaista.fi [81.197.9.41])
	by fgw22.mail.saunalahti.fi (Halon) with SMTP
	id 15d1130c-7c30-11ec-ae1c-005056bdf889;
	Sun, 23 Jan 2022 11:37:30 +0200 (EET)
Received: (qmail 26487 invoked from network); 23 Jan 2022 09:37:30 -0000
Received: from localhost (127.0.0.1)
	by nkl.local with SMTP; 23 Jan 2022 09:37:30 -0000
Date: Sun, 23 Jan 2022 11:37:30 +0200 (EET)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: web page problem
In-Reply-To: <2ca4507f-ab68-76a0-8bdf-56502d49fa4d@panix.com>
Message-ID: <alpine.DEB.2.21.2201231136070.9928@nkl.local>
References: <2ca4507f-ab68-76a0-8bdf-56502d49fa4d@panix.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi

If the file is listed in some html file you can use wget with
-A
or
--accept-regex
parameters if there is certain pattern to recognize the file.



-- 
mr. M01510 & guide Loadstone-GPS  Lat: 62.38718, lon: 25.64672
hkp://wwwkeys.pgp.net B784D020 fp:0C1F6A76 DC9DDD58 33838B5D 0E769600 B7840D02
http://sokkona.arimo.info


  Linux for blind general discussion kirjoitti
> Subject: web page problem
> Date: Sun, 23 Jan 2022 07:04:56
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> 
> Is it possible when a file had its version updated on its web page to get
> the urls of the new versions so the new versions can be downloaded?  html
> doesn't support wild cards so this can't be done with wget.  I'd like to
> be able to do this with a script if at all possible.  I know perl does
> wildcards well, but don't know if perl can handle a job like this.
> If a file is on a web page it can be checked using wget with --spider
> option followed by the url name.
> Since such a case will return a 0 errorlevel, it's possible to put a &&
> followed by a wget -bc url to download the file if it exists.
> once the file is downloading
> wc -l wget-log && grep -i saved wget-log && rm wget-log
> command run every so often shows the growing size of wget-log and at the
> end will show the file name and then remove wget-log  The magic is in that
> && pipe from one command to the next.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

