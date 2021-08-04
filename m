Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 622543E0B04
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 01:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628121278;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qIxzVFjAnW7tQHFwaOztxNltIPA2pmxUIPH/fSjzsco=;
	b=gQZ5MHRUn8j6zyGLrw757tbh1d0GMJ7pxWphcd3WmVhINKCmdfCNxHFX1R7Aol0Vx0bV/O
	IyuXb146X6UOodL/fFOzx3LBBPFc4BSAPX/v97xe3wldFmxvm+ORvNPqibEuq+CThwdRGI
	d1nTMuvzIFklVF76vL9YnTmS4gJzjBU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-418-SFyr9KmCNtCFv0BX--wX9Q-1; Wed, 04 Aug 2021 19:54:36 -0400
X-MC-Unique: SFyr9KmCNtCFv0BX--wX9Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C654E801AC0;
	Wed,  4 Aug 2021 23:54:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B3CDB5D9CA;
	Wed,  4 Aug 2021 23:54:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5DE124BB7C;
	Wed,  4 Aug 2021 23:54:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 174Nq8PR021675 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 19:52:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6297820341C6; Wed,  4 Aug 2021 23:52:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E155202F2FA
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 23:52:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 746B2858286
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 23:52:04 +0000 (UTC)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
	[209.85.210.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-409-OFJLUMgkMMm0iklpFcVUjQ-1; Wed, 04 Aug 2021 19:52:02 -0400
X-MC-Unique: OFJLUMgkMMm0iklpFcVUjQ-1
Received: by mail-ot1-f41.google.com with SMTP id
	f20-20020a9d6c140000b02904bb9756274cso3337129otq.6
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 16:52:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=lElYNbO/u0qYFHJvIaH4Ad2arizmxq8y0QIW11sHJgY=;
	b=UUmlTIKnwtW09b24M6LQfKNMOy/VhOW6Dey2WU1Uwu13VLg04D7JWG2K58hdIQOtPX
	V9uBtQpoBBEV/R4c9EbaiSYlngHwnUl8Mo65fjZ6r5TJrfkO8QLoZcPIScXdeGIRGOS5
	F2pDCb0gRsD8G7bCucKecU3Zp6/jAprrIpl2ckoLH8OPAYqLRAZyxJ1OKIQB45nbNlW+
	b3bG011lKrEgNquD0G0VaVogslr2FravLMAZMy598ZPn0Wf8UnpACA0Arui5dYt1+Brf
	h38wBHL2aD08+tSYfgoO7o1sAKGdk04+Pn2AiImIT0MM7RYS/Tp6rbvCzn4cRct5FNz5
	rivw==
X-Gm-Message-State: AOAM532U9ARFuroiNxkNtqNjmhzG7UOZJ6yREofRvqUpd5gTlk1Wa/Mn
	bWVXimRmJEgWMuwfdQCRxFcsCP0eIF8=
X-Google-Smtp-Source: ABdhPJy43cb8bLfxB25ZWOPMr/EgargxbLc4fPQ1tH6/PslgrKzLfjMUncaGGc5UKMOZY0A5DsoUhw==
X-Received: by 2002:a05:6830:619:: with SMTP id
	w25mr1526186oti.150.1628121121619; 
	Wed, 04 Aug 2021 16:52:01 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:45c9:39c8:e5af:5000])
	by smtp.gmail.com with ESMTPSA id p4sm549717ooa.35.2021.08.04.16.52.00
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Aug 2021 16:52:01 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Solus DE observations
Date: Wed, 4 Aug 2021 18:52:00 -0500
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
	<507fd0d3-4aa0-dabf-c080-90bb0775dfa5@gmail.com>
	<dfd09fe5-f568-1553-82a5-650ab234b84d@gmail.com>
	<da3aefc4-efce-2540-9eba-d6ddbd0a6c7e@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <da3aefc4-efce-2540-9eba-d6ddbd0a6c7e@gmail.com>
Message-Id: <96BBED50-5B5B-4EED-B882-7CC419DE9B36@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 174Nq8PR021675
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

A very basic question, how may I shutdown or restart a budgie system?
Thanks for your patience.
With super key, I have found apps, and connected to wifi.

> On Aug 4, 2021, at 6:01 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> As in, installed Mate, did a eopkg up and Firefox launches and responds to Orca keys.
> 
> But, it doesn't give output to Orca. For instance. Hitting Orca+T for time, Orca doesn't announce the time in Firefox, yet works fine in Seamonkey/Chromium/etc
> 
> On 8/4/21 6:33 PM, Linux for blind general discussion wrote:
>> Yes, I'm aware of the lost focus issues,but not sure what you're referring to with the "orca keys not announced" in Firefox.
>> 
>> 
>> 
>> Glad you like Budgie,
>> 
>> 
>> 
>> Dave
>> 
>> 
>> 
>> 
>> Sent from my Lenovo Thinkpad, running Slint GNU/Linux. https://slint.fr for info
>> 
>> On 8/4/21 7:33 AM, Linux for blind general discussion wrote:
>>> Dave, did you have the issue I'm experienceing with Firefox not announcing Orca keystrokes and Chromium based apps causing Marco to lose focus at times? Those are my two biggest issues with the Mate DE, but Budgie with a drop down terminal is all 
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


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

