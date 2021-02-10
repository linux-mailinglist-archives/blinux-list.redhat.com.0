Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id A5034315A70
	for <lists+blinux-list@lfdr.de>; Wed, 10 Feb 2021 01:02:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1612915330;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=770Zt/sXwpMDQe2XIz01lj75K7m6Yw1JgKAU/+7qj+Y=;
	b=N6WNaxzkCaBndRIRFakBlL2xFs2cb85gWLW/Kj/pyW5Kuebqh1ZpkgKel/CY/aKAwGY/Pw
	jggQfqZbiAKoDJJyWRd0h4U0r65fefnYyznO9oGmfOXgVAf8mCxTEVEuq+HDVkPIQ+Aedk
	7AP+Cia00Ra49KaS1s2lowOpunoSJaA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-232-98qidCj_PA29XmrlXWBUtA-1; Tue, 09 Feb 2021 19:02:08 -0500
X-MC-Unique: 98qidCj_PA29XmrlXWBUtA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 118578030CC;
	Wed, 10 Feb 2021 00:02:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F7785D745;
	Wed, 10 Feb 2021 00:02:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CA39818095CB;
	Wed, 10 Feb 2021 00:02:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11A01vX7007251 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 9 Feb 2021 19:01:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A7EEEA9F18; Wed, 10 Feb 2021 00:01:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A2522A37AA
	for <blinux-list@redhat.com>; Wed, 10 Feb 2021 00:01:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2A2FD80B93F
	for <blinux-list@redhat.com>; Wed, 10 Feb 2021 00:01:55 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
	[209.85.219.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-394-BUSgos_BO86Z81KCLEuq1w-1; Tue, 09 Feb 2021 19:01:53 -0500
X-MC-Unique: BUSgos_BO86Z81KCLEuq1w-1
Received: by mail-qv1-f46.google.com with SMTP id es14so68646qvb.3
	for <blinux-list@redhat.com>; Tue, 09 Feb 2021 16:01:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=YnJBeBdGN+XY+5ahDAcguv7N6GxsFUVJZqH4J0bBkdQ=;
	b=gXBw7q85S0lclxe9X9zYB7+98wElreSV3voZTFwzkMKuEHX2X/gGzG3V/t+Js0gaCF
	V1ZtsEGgWO89N2uXZ2Sln82mNN1wUF3xHfItV0Yqo5ovwz+1nNuKgqm49QpWaeCZs+H8
	tuDLK0+H/If0HXquicE7z9HJQHxqXngPB8Mi72/6Tca8eu6dtno+xwB2lJ6UMaWAzPnT
	lFUeSJUJMScWF7x68P037eep+596fpGpWTjgaiJ7n9jH4ZI1jlmXYGLo19YlbdAvkU3q
	QkHU5NInDFwvCWKGtKM9BkMlsSNLdyKTSCNljlRhaQI/rt9EAiGMelqDkialP/I06xqb
	t2Eg==
X-Gm-Message-State: AOAM530TSAzqEK7wHbXr4yVm5g2jsCc2dXq+kL7/j/yN2fIZNkwgwQep
	P3VsKCutIUlsI+vCvEowMcTrF96hiRx4rHLHq9OVvJ0RiTc=
X-Google-Smtp-Source: ABdhPJyW5wwTMq/P8X8eR3wpYbbnEPT76w4iJWrPNtNogi6mxrcY5N3Ivw/0aOeG7gHerfdngupUJFfmEn+Ky8EkL6E=
X-Received: by 2002:a0c:fd47:: with SMTP id j7mr494447qvs.22.1612915312272;
	Tue, 09 Feb 2021 16:01:52 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:b48c:0:0:0:0:0 with HTTP;
	Tue, 9 Feb 2021 16:01:51 -0800 (PST)
In-Reply-To: <alpine.NEB.2.23.451.2102091850210.1378@panix1.panix.com>
References: <Pine.LNX.4.64.2102091827530.24393@server2.shellworld.net>
	<alpine.NEB.2.23.451.2102091850210.1378@panix1.panix.com>
Date: Wed, 10 Feb 2021 00:01:51 +0000
Message-ID: <CAO2sX33i8aRFCVssjX-LvVeprgUnXHiFhT8T6ruGJtWuQy+TTg@mail.gmail.com>
Subject: Re: simple Ubintu question?
To: blinux-list@redhat.com
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

I'm pretty sure most distros default to espeak or espeak-ng for
handling text-to-speech. Also, regardless of the TTS used on the back
end, Orca uses Speech Dispatcher as a go between between itself and
the TTS.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

