Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2972E5929E6
	for <lists+blinux-list@lfdr.de>; Mon, 15 Aug 2022 08:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660546429;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zQwmwV3RoItccvz5J/Kk7OTTF88IuXGOumopdEKnQL4=;
	b=VfBGc/nI7wvlpfJu+lf/ul50gvi+bejuSGpvNspWKPg9NvjooBs2PxtbZ/+H7mdHYBFUON
	fVpMA3ZLXwsZoZk69aTO2WQa78WZPYO4yX/oUBOwBfyAVM+W7ELUmx1bwvhgcURlYXI4wo
	2Zh4QvpGSOdk+G0g0vipWR5GbBOUDNY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-388-80Wh7selPACSkM3MT1-x-Q-1; Mon, 15 Aug 2022 02:53:46 -0400
X-MC-Unique: 80Wh7selPACSkM3MT1-x-Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AEF33101A54E;
	Mon, 15 Aug 2022 06:53:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9E141112131B;
	Mon, 15 Aug 2022 06:53:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9CC2C1946A49;
	Mon, 15 Aug 2022 06:53:39 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 15 Aug 2022 08:48:32 +0200
MIME-Version: 1.0
Subject: Re: flat bed scanner recommendations
To: blinux-list@redhat.com
References: <mailman.576.1660506508.10501.blinux-list@redhat.com>
In-Reply-To: <mailman.576.1660506508.10501.blinux-list@redhat.com>
X-Spam-Flag: NO
Message-ID: <mailman.609.1660546418.10499.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On 8/14/2022 9:48 PM, Linux for blind general discussion wrote:
> For the orca or espeak or fenrir or emacspeak or brltty users on this list
> Can you recommend any flat bed scanner brands and models you found linux
> liked and you can use?
 >

Picking one that is 'supported' by the SANE project [1] and using the CLI.


[1]  http://www.sane-project.org

--
John Doe

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

