Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA6D454707
	for <lists+blinux-list@lfdr.de>; Wed, 17 Nov 2021 14:17:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637155054;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eapeES5iaWG93YXbW0TGZ1Yz5btJuiCJwX3Fq1LkTT0=;
	b=IodsQu04pjxJNPlvbHThGxiejUZDq+K6iDB+14qJCvcI5PXIJ8+OOhPFxm14SGjQQicOKu
	urjfKjDeqSkwiWwcKIjpJzPOF7ZodOyCbbc2eJb8o9QqNkyXKBCEiJdVFn1aq1DyLBGnCO
	Xm4yntmqzcDPcBaOnxUaaFk5JW3M8gE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-446-sI5w-dEoO06D3G-YJYqQtQ-1; Wed, 17 Nov 2021 08:17:30 -0500
X-MC-Unique: sI5w-dEoO06D3G-YJYqQtQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C2E9B102CC4E;
	Wed, 17 Nov 2021 13:17:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 69FFE5F4ED;
	Wed, 17 Nov 2021 13:17:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 50F214A704;
	Wed, 17 Nov 2021 13:17:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AHDHArA000770 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Nov 2021 08:17:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6834F404727A; Wed, 17 Nov 2021 13:17:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 634224047272
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 13:17:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4AFD880A0B3
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 13:17:10 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
	[209.85.219.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-550-risNci0MMn-qEXpd7aAyHA-1; Wed, 17 Nov 2021 08:17:08 -0500
X-MC-Unique: risNci0MMn-qEXpd7aAyHA-1
Received: by mail-qv1-f41.google.com with SMTP id b11so1973749qvm.7
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 05:17:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=4v9+1dZNzs7KRmTDsg2INOseyImw1d+YZYPgfcEhP+g=;
	b=xJW8gIvTxjs07IbJQXPY0FdlDUsABcV+HbbBMrqeGwYwmWQPKBzsYuKgSxilVKquq3
	GnDpP9nkzHSzSX/sCP0lPRkTRBbuyFj9w2Ek6/sJb86bkkUT7slzd7GYN06lVENxS5S1
	pAsATA00OxCccXdGvKszXgucFNW4zkgoYv9ipFdOaNfI/ESthpeoFBVCULxjpXlu+79M
	4EIN3V96aAO9ALahwFBpkUZdeiGMWEdjYhZx2jaahNqjagrEMWXU/szUPwU1sYS5FtpC
	m+pXkNVAUEdTXil9cfVP64468OzbPQ4iKm0w+ktOESFqdckaZUOth3WrhBfKdazTCh1E
	odYA==
X-Gm-Message-State: AOAM531BPTDoApxcGg4nTH7G3OMu86tXJ5Mop4EyJhRS+5avAsYT19vB
	CgQKk6QP530kCT4DFrYSds808O7IrwA=
X-Google-Smtp-Source: ABdhPJwJaqWiApfcyAD9gYz2KMyNqQPEFiFYglaO8eRK+tYMRfnYUMGJoqay/fCt8kz+kEm0xd7ypA==
X-Received: by 2002:a05:6214:ace:: with SMTP id
	g14mr55010322qvi.12.1637155027699; 
	Wed, 17 Nov 2021 05:17:07 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id e5sm9888036qkg.15.2021.11.17.05.17.07
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 17 Nov 2021 05:17:07 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
Message-ID: <0a8fe3bb-93a5-6464-30ca-10a11eab942a@gmail.com>
Date: Wed, 17 Nov 2021 08:17:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Fedora is a very good distribution. I personally recommend the MATE-Compiz spin.
https://spins.fedoraproject.org/en/mate-compiz
It can certainly be installed easily, comes with the VirtualBox guest editions 
and other similar helpers for running in virtual environments, and also ships 
with orca out of the box. Eventually it will be better to run any distribution 
on bare metal and run any other operating system you want in the virtual 
environment, but for either use case, Fedora-MATE-Compiz is very comprehensive, 
solid and stable.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

