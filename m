Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6691B7BCD0E
	for <lists+blinux-list@lfdr.de>; Sun,  8 Oct 2023 09:50:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696751455;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BKFmnL+UxTtB386Oz7WSJ7Ynj2qNBZLonzMHLBd1m6g=;
	b=H5/w6a/6Jk9n7oyfYW8A+Ewtu2VRCHANW9mlS4dwVkDaXvGM8PHCEdC5l7b+Zr8TEcJsz1
	QUzgF7w6T+ylHtqAD5X4xPO1nalFJu4cU2ITUGdEQZweqBgUvqJ948PKvYb2/2UenWL2zf
	Vwj+3+JXFj3Ceol7MRfLefTPSsyYirc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-262-FX1juAALP3OOsxKuTc3Oqw-1; Sun, 08 Oct 2023 03:50:53 -0400
X-MC-Unique: FX1juAALP3OOsxKuTc3Oqw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 90631811E7B;
	Sun,  8 Oct 2023 07:50:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2363CC15BB8;
	Sun,  8 Oct 2023 07:50:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0E5BB19465B5;
	Sun,  8 Oct 2023 07:50:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 8 Oct 2023 09:50:38 +0200
MIME-Version: 1.0
Subject: Re: Debian with Orca
To: blinux-list@redhat.com
References: <mailman.22.1696701251.2052526.blinux-list@redhat.com>
In-Reply-To: <mailman.22.1696701251.2052526.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:m5oyKcj5zbI=;PzCoEW3iSFrN0GaZCBDppkADTr2
 ekSDJk7uAO8TQRWRrB7+IVTPGsEPtT5O6V8MXf7XFMQk9JPgQwdX5emx5KIifgwrSq6jr6kRj
 VqbDGJeJS9jG+wuwJ/7kAOTtMOGuhDRRaKOxBAYtqAP7FyyOwhOKKMgl2dhlM1+3V7SovR/cp
 1hSrC3A0uHSb/wEArykIM1CEh2iaSY/1aVOMQyj/tdk4Da0098aC+MPI+H9aAL8VNdF9Y4Jur
 UZ2St9gMNSObRifGRR0FCX8i1kk9KrJHXcP/wlE4di8mD5O5ZByRGfiZ4isUdpBUeytpjNI2F
 N7WZ8XM3Vbqk2d0dCrvL3XPpKqm+DKbTdtEGKydU2t+sCQqzqa03AfgBbVP2Rn8I6REk1JsZp
 Y3RhJjxuH09cEzYdzDR62j6MisNLn3lbKwfGBw1EOOIWJSjrjQZ7vdJlZpRpRl1o5TaHhBGW2
 iRbAD8wnRTAcuvACm4/k4rh8+eLiH5TsfC3OeMbZuIYAzbfeHVdS8kIl7yWe2wLLm5gDOkm/W
 GAieBZ199YX2ErZsMIrN/FVS/KJRI7SS7e0EnXyKMqaHGAmgwxhDrrG9dB4tzwCITGQ3ObA2a
 lOwpTW+d4/Fj4IoH14cBFqiuhJn4heHxlmNuBBQWGrL97uZ19JVcOzeulyfC/fXT3uuHffbs2
 PlsjNKNHCA8FrK7m01qPGdaEz2fgcq+TArIo8v4TT67Xv5UGMJKjm/eG/vzkQ3SHQBKuO/tQN
 f8FEofk+fWo9lAfM5aQdDSPA+VLwcW0SkylRgQdNft5Vj06np0+JzHiCGQAel/NUfZLI29O/k
 sxU58RVhHb2R3d+vUQ8xHL/aHhSuWSA5LShukypsj3HxXvbw+Jcu2oHyPh78Kw2uTOMHBJX/2
 I+z8e6bi2eT7kFr6Q87vv/o6dR1KJedE006pJ/YlGci2Y599HcF/uiMqCD2mmzhGI2omZhCwj
 ujF9mA==
Message-ID: <mailman.67.1696751444.2052533.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On 10/7/23 19:54, Linux for blind general discussion wrote:
> 	So, my primary question is am I missing something about
> the command consoles?  The mate terminal seems to be working but
> it's not quite the same as a command-line console.
>

If you are on a laptop, the FN key might be playing a role.

When USB is at play, I will consider buying something with the UASP
protocol.

--
John Doe

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

