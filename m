Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id C867D326F87
	for <lists+blinux-list@lfdr.de>; Sun, 28 Feb 2021 00:09:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614467342;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Urxyt1wYiCtgxBQ4/mXV+mcE8nD6TqX/+h2sSPv/PVY=;
	b=aULCHoleS/ZKje6Krgh/NlO6EIeqO2Y0lAd3IjyQF8Xc6Du26uStf/V7QdQS7rwCizccKb
	VqtgXbrcuBjhMlFwPYAUwqZ/AREByjKuoCa46HAuB3jdI/8K07pOOWJs7tMMpfjAu8tcwF
	YZF71ddexGoucsA0kVydutgPuqLN0kk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-472-Kd_RQVKRONux6m23fxjYgw-1; Sat, 27 Feb 2021 18:09:00 -0500
X-MC-Unique: Kd_RQVKRONux6m23fxjYgw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 94DB0C282;
	Sat, 27 Feb 2021 23:08:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 733935C5E0;
	Sat, 27 Feb 2021 23:08:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B717F57DFC;
	Sat, 27 Feb 2021 23:08:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RN8omj021066 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 18:08:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9A5C32166B2D; Sat, 27 Feb 2021 23:08:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9550F2166B27
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 23:08:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6F4A2185A7BC
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 23:08:48 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
	[209.85.219.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-242-aXmvbmXWOxe4UcoHjgNKZA-1; Sat, 27 Feb 2021 18:08:45 -0500
X-MC-Unique: aXmvbmXWOxe4UcoHjgNKZA-1
Received: by mail-qv1-f41.google.com with SMTP id d9so142703qvo.3
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 15:08:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=2y0LhtrJoP2iAgGOKsj6QSJl3JUjwxq0Nm1XLZhODtA=;
	b=c/jBTs1GU7jUcc7xvQtnaXMdmB2KRPUp2TN5GLSm2Ji0nwIUx/L52/voMWoFUJnMrS
	YcS7rhY+zC2sUzSVLmHEb9gdfCmKR6TcaHXT6AFX2QBSs8YZzkmgfvD1PSo82H1YykfP
	1wvhVnpyMvjXEiMh0+v7+M6LDVFVuf0/OpzojXQbyJqVuwzacw6tTqiOUbOx5eUrc74a
	EvzR42KI8rlgx9SQ2HDK/RIc5dVmqz9ycj/j0rUoL3nEZGlPk2mkGCNfKQ1cMBoF7dNm
	n5dYF4ecmDyqYT+6dynGiXZdPRavvac6vFuQNsfk1z/g2Jjnfgvfl+ZVplXE2Wz1x/37
	22FA==
X-Gm-Message-State: AOAM5331ZotLhMOQkk3PkTKMBDZeQDu8SeurGHh+NH8VSmeRDBPJixjN
	mZfbOBuvIehBuExCSXbnMElYG/+33yE=
X-Google-Smtp-Source: ABdhPJwPiDRBnSjaW4Dz7Kwlk176gpPWM17Xof9/3HL/20zz3lNWV8HaKfghPwyDneb46AY3NiFLBA==
X-Received: by 2002:a05:6214:326:: with SMTP id
	j6mr8828986qvu.13.1614467325199; 
	Sat, 27 Feb 2021 15:08:45 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::f84?
	(2603-6080-6304-450a-0000-0000-0000-0f84.res6.spectrum.com.
	[2603:6080:6304:450a::f84]) by smtp.gmail.com with ESMTPSA id
	e15sm8464161qti.79.2021.02.27.15.08.44 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 27 Feb 2021 15:08:44 -0800 (PST)
Subject: Re: Running Android Voices in Linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
	<e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
Message-ID: <1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
Date: Sat, 27 Feb 2021 18:08:43 -0500
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

It's possible you may need python-lxml or the equivalent package. That 
is needed for the build here running Arch Linux. You will likely also 
need Pulseaudio, as that shows up as a required dependency here. The 
scons command I have to build RHVoice is

scons prefix="/usr" sysconfdir="/etc"
No other options are present on the scons command line I have. Hope it 
helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

