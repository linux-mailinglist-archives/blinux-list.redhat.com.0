Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A4E48E78A
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jan 2022 10:31:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642152702;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Wy119T9wOq5XgAupNV+Ryv7H4ESJO4R8RgnvoqauFAs=;
	b=J5Q/PQ0NESmkUw/KNDSxgI93TwKeJRp/QDzKPfXZBg9mNvCDDssOS50EN1nHYzLItOpB9W
	T3WJsqfpjb/SaSmpl7MsVGu67Jq7xwS1piVklrdKKpaBF0ZJXoJwXkcpGEySsEdUYzavpK
	0JbwD+Fw/8SOTd2HjP+4ayV6MQqJTx0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-364-ZF-Q44CVNt-ZxruzMP0Y0Q-1; Fri, 14 Jan 2022 04:31:40 -0500
X-MC-Unique: ZF-Q44CVNt-ZxruzMP0Y0Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 03FA984B9A4;
	Fri, 14 Jan 2022 09:31:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F247C6F12F;
	Fri, 14 Jan 2022 09:31:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6D9761809CB8;
	Fri, 14 Jan 2022 09:31:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20E9UWo9004055 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 14 Jan 2022 04:30:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9B1EF401DAE; Fri, 14 Jan 2022 09:30:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 971A746D218
	for <blinux-list@redhat.com>; Fri, 14 Jan 2022 09:30:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E4158011A5
	for <blinux-list@redhat.com>; Fri, 14 Jan 2022 09:30:32 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-5-lg1_Ht22Ofq9fSWQ4Tak3w-1; Fri, 14 Jan 2022 04:30:28 -0500
X-MC-Unique: lg1_Ht22Ofq9fSWQ4Tak3w-1
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest
	SHA256) (No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 15E38FA808
	for <blinux-list@redhat.com>; Fri, 14 Jan 2022 04:30:26 -0500 (EST)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net 15E38FA808
Received: (from janina@localhost)
	by opera.rednote.net (8.17.1/8.16.1/Submit) id 20E9UPZE1149878
	for blinux-list@redhat.com; Fri, 14 Jan 2022 04:30:25 -0500
Date: Fri, 14 Jan 2022 04:30:25 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Voxin in Arch
Message-ID: <YeFCsWXAR9r+uq3C@rednote.net>
References: <324d87f3-44a0-e226-be6d-ee7a57d76755@seznam.cz>
MIME-Version: 1.0
In-Reply-To: <324d87f3-44a0-e226-be6d-ee7a57d76755@seznam.cz>
X-Operating-System: Linux opera.rednote.net 5.15.12-200.fc35.x86_64
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I tried Voxin just this past weekend on Arch without success.

Speech Dispatcher appears to load the module, but there's no option for
the voices in the Orca Voice menu.

Best,

Janina

Linux for blind general discussion writes:
> Hello,
> 
> is Voxin usable now in Arch or is needed a new version of it?
> 
> Thanks a lot.
> 
> Best regards
> 
> Vojta.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka
(she/her/hers)
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

