Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D1A6106E9
	for <lists+blinux-list@lfdr.de>; Fri, 28 Oct 2022 02:38:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666917538;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vSPfk2eLR3yExwYBKGuz6k/f6GAgyqNslM7wl5C2MwM=;
	b=G9q7HVt+9ALu+zGJ4w9o4sw1AIPTmQMsFPMPGicz8D9TAlh0io+J6FF8oKfKFke4Qzh4A9
	4ZH5D4Qgz2Acu+KQGMRPji4smVvoZz0qi91ohl0K7SCVcDgHSbuig3TKtuf9nswOu1AaOZ
	9BY7uEW2eBgW+aDP1SToeQn2OW3bTfs=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-186-pmcb4cl4N1iJovm096bPhw-1; Thu, 27 Oct 2022 20:38:54 -0400
X-MC-Unique: pmcb4cl4N1iJovm096bPhw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 294053C025B9;
	Fri, 28 Oct 2022 00:38:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 075CB422A9;
	Fri, 28 Oct 2022 00:38:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B3BA41946A7F;
	Fri, 28 Oct 2022 00:38:46 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 27 Oct 2022 20:38:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: Chromium-based browser local .desktop files (was Re: void-linux)
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.3229.1666863125.3003.blinux-list@redhat.com>
 <mailman.3171.1666863524.3004.blinux-list@redhat.com>
 <mailman.3232.1666864286.3003.blinux-list@redhat.com>
 <mailman.3046.1666864669.3009.blinux-list@redhat.com>
 <mailman.3174.1666865573.3004.blinux-list@redhat.com>
 <mailman.3148.1666903063.3012.blinux-list@redhat.com>
 <mailman.3315.1666906969.3011.blinux-list@redhat.com>
 <mailman.3202.1666908770.3007.blinux-list@redhat.com>
 <mailman.3203.1666911224.3007.blinux-list@redhat.com>
 <mailman.3297.1666916343.3004.blinux-list@redhat.com>
In-Reply-To: <mailman.3297.1666916343.3004.blinux-list@redhat.com>
Message-ID: <mailman.3355.1666917526.3003.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Confirmed!


I placed

export ACCESSIBILITY_ENABLED=1

on a line by itself in a file I called /etc/profile.d/accessibility.sh 
and rebooted the computer. Chromium and Brave began speaking without any 
further intervention. This is after removing all my browser .desktop 
files from .local/share/applications and placing them in a new folder. 
Google Chrome is the only one that didn't speak at first, but I closed 
something and then closed the other pop-up that told me that it couldn't 
update Google Chrome to the latest version, then I got normal speech. So 
the desktop files are truly no longer needed for Chromium-based browsers.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

