Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9C6593EC0
	for <lists+blinux-list@lfdr.de>; Mon, 15 Aug 2022 23:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660599640;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=v0k8mvKbZAO1GtDQuYmNRQJBxjG/i78MSjnLKyE5xIA=;
	b=grD4f1DfwF/R/eb7PAgdxU+JPYmmc7gDtxWyITD4asVAzE+IDakPzBC//CwYJ07kwe2j31
	YvQXltwjJiQRj26V9umCrD9NrRfIUrdUwMt86O9ucGdA/Lo8pbBSeIdPWWrC0pypdsoeej
	roADSM8LDCB767OuRMwxAMR20RrveEc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-225-YvNCHlqhPq2M-DMF1lHyag-1; Mon, 15 Aug 2022 17:40:36 -0400
X-MC-Unique: YvNCHlqhPq2M-DMF1lHyag-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D1E4729AB455;
	Mon, 15 Aug 2022 21:40:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4F08840CFD0B;
	Mon, 15 Aug 2022 21:40:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A08AA1940353;
	Mon, 15 Aug 2022 21:40:33 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Mon, 15 Aug 2022 14:40:28 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Need help with a Youtube terminal app
In-Reply-To: <mailman.724.1660597476.10502.blinux-list@redhat.com>
References: <mailman.693.1660588007.10505.blinux-list@redhat.com>
 <mailman.714.1660588859.10499.blinux-list@redhat.com>
 <mailman.724.1660597476.10502.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.788.1660599633.10498.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, Rob, these days youtube-viewer can use yt-dlp which doesn't require a 
key, also in many cases download speeds are nicely increased. Another similar 
program of his is straw-viewer.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

