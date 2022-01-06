Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D41B486DC6
	for <lists+blinux-list@lfdr.de>; Fri,  7 Jan 2022 00:31:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641511903;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=q4WqMYubAySZUkVCL6GZ6s/H7evpfeTkivVKkUA6KkQ=;
	b=WJUAUEwi9RDr+Z+As47zrlDFJ2o4onetHms9C16dAyxMQpUVuO4mgsD426cXwveTlfh8wm
	oKLPwUHNZ11yzxTg34N9VgP3XSFNi1Be+oaNSRQ9rU7Ao/knk9b7Q/dhbyYBNfbJnsgxck
	/mONXK/j9dYso4/M40qbh6R/doac9xs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-359-VWyU_xsvNtiu5N2MZlvnFA-1; Thu, 06 Jan 2022 18:31:41 -0500
X-MC-Unique: VWyU_xsvNtiu5N2MZlvnFA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DEBED8015CD;
	Thu,  6 Jan 2022 23:31:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A3258108A0;
	Thu,  6 Jan 2022 23:31:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 103D44BB7C;
	Thu,  6 Jan 2022 23:31:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 206NVAdk001897 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 6 Jan 2022 18:31:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5F6D940FF707; Thu,  6 Jan 2022 23:31:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A42840FF706
	for <blinux-list@redhat.com>; Thu,  6 Jan 2022 23:31:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 45035185A7BA
	for <blinux-list@redhat.com>; Thu,  6 Jan 2022 23:31:10 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-495-WL5G4K7-PC-YE-06075qZg-1;
	Thu, 06 Jan 2022 18:31:08 -0500
X-MC-Unique: WL5G4K7-PC-YE-06075qZg-1
Received: from [192.168.1.38] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 7D239C4693;
	Thu,  6 Jan 2022 23:31:04 +0100 (CET)
Message-ID: <bafa422c-eba4-223a-0d2f-f632f5bd6445@slint.fr>
Date: Fri, 7 Jan 2022 00:30:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.1
To: slint@freelists.org,
	Linux for blind general discussion <blinux-list@redhat.com>,
	debian-accessibility@lists.debian.org, orca-list <orca-list@gnome.org>
Subject: Jos Lemmens passed away on November 9, 2021
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

I have been sad to learn that we lost Jos from his web page:
http://jlemmens.nl/
http://ta.twi.tudelft.nl/dv/staff/lemmens/jlemmens.nl/

Quote from this page:

--
Update November 9, 2021: I am very sorry to inform you that Jos quietly passed
away this morning.
He will be remembered as our own dear, clever, little "Stephen Hawking".
His brother Kees and other family.

His VPS server was closed recently and this website is now temporarily hosted at
the TU Delft.
--

Los was the developer of eBook-speaker and daisy-player, both included in Slint.

I had communicated with him not so long ago.

I will miss him.

Best regards,

Didier

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

