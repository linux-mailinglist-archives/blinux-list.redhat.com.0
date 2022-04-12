Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 479514FCBF6
	for <lists+blinux-list@lfdr.de>; Tue, 12 Apr 2022 03:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649728075;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4YOpB+67p7tJJ0+tU6hfgjJ7+VHRZ1jDhbwmg4PWSzs=;
	b=Jn3GtMmdBR+iX7s7M7j5/hk8vjoi0xUTqB1hxcAju+91ivGabdhv12bWE4SFOtAFEM+e34
	MSEJ8ooOFeNOKJnRkEy6LbTmuu67yKtfLelsJjnQITiDeHnhxiURaLRFrTy0c5GKeRrBOk
	6ZXg7WBH81kqR0TQTZsJDYOKkGztOuM=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-504-v5bpEVN8M3GzDtkrQknGXQ-1; Mon, 11 Apr 2022 21:47:51 -0400
X-MC-Unique: v5bpEVN8M3GzDtkrQknGXQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2577B3801FE0;
	Tue, 12 Apr 2022 01:47:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C2D7D145B99D;
	Tue, 12 Apr 2022 01:47:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DFA301940369;
	Tue, 12 Apr 2022 01:47:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Subject: Re: Jenux update
To: blinux-list@redhat.com
References: <mailman.7778.1649714952.111203.blinux-list@redhat.com>
Date: Mon, 11 Apr 2022 21:47:40 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <mailman.7778.1649714952.111203.blinux-list@redhat.com>
Message-ID: <mailman.7822.1649728064.111209.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

No speech during install? I' installing in VMware player 16.2. with OCR 
I can tell I get a boot menu, there's no speech for that, but I down 
arrowed as many times as it sounded like it would take to get to the 
install jenux on this computer option. Then it wanted me to choose 
whether I had WiFi and press enter a couple of times. I never did get 
any speech. What am I missing?




Cheers:
Aaron Spears, AKA Valiant8086 General Partner at Valiant Galaxy Associates "we make (VERY GOOD AUDIOGAMES) for the blind comunity" http://valiantGalaxy.com

On 4/11/2022 6:09 PM, Linux for blind general discussion wrote:
> So I'm downloading Jenux again, and the version number is the same on 
> one site and the other one is 404. How do I know if I'm redownloading 
> the same file I already had with the permission bug?
>
>
> There's two sites:
>
> NashCentral/JenniOS Accessibility Projects 
> <https://nashcentral.duckdns.org/projects.html>
>
>
> and
>
>
> JenniOS/NashCentral Accessibility Projects 
> <https://jennios.com/projects.html>
>
>
> The latter of which is the one that gets a 404. Why are there two 
> sites? Can we be rid of one to cut down on confusion?
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

