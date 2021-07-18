Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id C6D6F3CCA26
	for <lists+blinux-list@lfdr.de>; Sun, 18 Jul 2021 19:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626630419;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=G2UHDwrSZ5TU0WFDrr8O1FfuA3CdkrnMMkCcXJIU2jc=;
	b=b/Fx4bq7BmxildC3S7YOfY9CvY+UIAuA3XKiTpCVl2OGiTVjYSeO7MsOCjEbwXXlJcqFF0
	M0iUi/9i6X9hzMOinU7CHouM64sb2mXwPCIPgq0N23xFHVEEMvK7hQKO9/qUJCyKCdbtge
	P42K9dxlCLZ2ToK26kgGUXGDj3EytAc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-324-oVhFRxG_OK-nEu3oBMlLMg-1; Sun, 18 Jul 2021 13:46:58 -0400
X-MC-Unique: oVhFRxG_OK-nEu3oBMlLMg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C911C802C88;
	Sun, 18 Jul 2021 17:46:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1DAE5D9F0;
	Sun, 18 Jul 2021 17:46:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0F7884EA2A;
	Sun, 18 Jul 2021 17:46:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16IHkikC026246 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 18 Jul 2021 13:46:44 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E881E1121330; Sun, 18 Jul 2021 17:46:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E3DA8112132C
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 17:46:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5E01E802E55
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 17:46:40 +0000 (UTC)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
	[209.85.210.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-309-PIBlkABqMF6ncukoL9-lNg-1; Sun, 18 Jul 2021 13:46:38 -0400
X-MC-Unique: PIBlkABqMF6ncukoL9-lNg-1
Received: by mail-ot1-f54.google.com with SMTP id
	f93-20020a9d03e60000b02904b1f1d7c5f4so15726578otf.9
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 10:46:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:reply-to:subject:to:references:from:message-id
	:date:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=hOxxO9Qy83Twhf8lOJwG9uj1bsvbmyzDQJSJoyiY2yE=;
	b=PeNGkQ5Wyr4cikXObvYI1IlgZoLTpiXKyJuzn8tv06/1yHWRR0XaiuhMYwfESlXA2o
	9VagOjMf7AENxmaR27kEj30GZui2tE1j3oSXbGbW3OECvFnr36JmUAF816kVmbrT81oG
	HlCnQBHaIska0U2KI/gmKiccN9/BycxodvDSSdyMamYZe7cP49R4HczairNEU+FGOmWB
	AT/fVkq7OkkBsqgwpHWmefcIO/Ev3M4Gb+Rjwozx6qhgjMk1hOoj3XDeQK2/J1FirJAM
	jSJLhblypPgWluz2k9sNwAOdSzVUPf3dJC6nwrBSGsJW3NjtETxg06fAcuOkdfTFV1lN
	Zvcg==
X-Gm-Message-State: AOAM532Y/qAwIhq5IehrlJplxRcfdjXsdAu8QoGJQ+H5a+qa38FfpAlF
	kcbRqOIYY+IBTTvJcPpIje0Ly7CO7YRtiw==
X-Google-Smtp-Source: ABdhPJysChQNZ6vgVVN1hBhzkAJMRoeiPoY270BRI6T33IOeKyRBNO1AKL2UkzmDuJ8R6gvqVq04+A==
X-Received: by 2002:a9d:2f0:: with SMTP id 103mr16016451otl.174.1626630397168; 
	Sun, 18 Jul 2021 10:46:37 -0700 (PDT)
Received: from ?IPv6:2600:1702:20f0:4420:ddf6:3517:183a:94f0?
	([2600:1702:20f0:4420:ddf6:3517:183a:94f0])
	by smtp.gmail.com with ESMTPSA id z3sm1182803oti.29.2021.07.18.10.46.36
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 18 Jul 2021 10:46:36 -0700 (PDT)
Subject: Re: espeak-ng on archlinux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.23.451.2107181224250.27095@panix1.panix.com>
Message-ID: <676d60e4-e46c-dca0-2b77-bda3f25379f6@gmail.com>
Date: Sun, 18 Jul 2021 13:46:35 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2107181224250.27095@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Matthew



Hi Did you change the default speech module in speechdddconf? Try this 
and see what happens.




On 7/18/2021 12:29 PM, Linux for blind general discussion wrote:
> I got espeak-ng partly working but not completely.
> When I key a line in and hit enter, espeak-ng speaks what I keyed in.
> That is all espeak-ng does.  So far as I can tell no espeak-ng.service
> file exists to enable and start espeak-ng when the system boots either.
> Finally, if during an archlinux installation espeak-ng is installed rather
> than espeak it's possible it's not pulling dependencies espeak-ng needs to
> speak.
> It would be nice if espeak-ng would speak what the computer puts up on the
> screen after I type a command but this isn't yet happening over here.
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

