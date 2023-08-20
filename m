Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BD6781C28
	for <lists+blinux-list@lfdr.de>; Sun, 20 Aug 2023 04:44:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692499475;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DP+kugQA1ekJXd7MVWs5+ELr7udeT2EI1Kobz08alBA=;
	b=hutXQ/mXSDMgE364UMnBOz7HFCd6M8pUx7SNfmoiO3S1O15IFSOTFiiLiZKp+TAPhEEs/i
	5xw4U0qlaHFeN0T3jkQqIDSl9jtK8srgJndRZZysNd1wsmoBsV+1IzvrbKSvguhyw8Dafw
	1eU4x/GEOJf5UQtXVru5VHRLLQW6Pic=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-478-3DZ7Cv8CN3CoX2nCblJmzA-1; Sat, 19 Aug 2023 22:44:33 -0400
X-MC-Unique: 3DZ7Cv8CN3CoX2nCblJmzA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8D2501C041AA;
	Sun, 20 Aug 2023 02:44:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0F7C41121314;
	Sun, 20 Aug 2023 02:44:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 97203194658F;
	Sun, 20 Aug 2023 02:44:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 19 Aug 2023 22:39:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: How to have Orca in LightDM?
To: blinux-list@redhat.com
References: <mailman.1754.1692407072.2238099.blinux-list@redhat.com>
 <mailman.14.1692426687.492710.blinux-list@redhat.com>
 <mailman.18.1692457269.492712.blinux-list@redhat.com>
In-Reply-To: <mailman.18.1692457269.492712.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:NaN6Qhf+p7M=;3u5gs/HBHxWqWf74UiQY1Tf3m7Q
 vAx7ZyD7QgiRZJmhzIZOTrBFReuu/q5xeZiFsK2RQF+JL430R2C6sqNeQptSDgGHvXSNGir1W
 Xdh9G5quu5JbvW4y1LRDMGhL8Oapsikm21b6AZA6mY12G6PENe33PVEetsXmB6BpZ1V2IeDet
 iccuTYV10MDCvbrDG5WL3CkqXvS/z7xTC4/k8uDiS7Ln8Et3RpHTWM8ejEPbDnNWTAlErPm6s
 aSi0il5ARisRqkAeDW4EeupFI2WcI8z3MYtRye32vU6CzsnentGIYzLqk0ucnu9Ks/k6hVULh
 pgjNZB8AW7EziJAeVASOG5HkIO1wAs8jGriNSKp3XWQX5rNeRrGtXUd6ZcUTGIK5+o0ar0bSZ
 OlT3I5H+VhbzyqrxX+TbslbVWyUO8xWOfNteRRVm8pT0XpVfssr2zeDSjQH5K72XDtvT/GqPt
 sHbXsG5hH6+xiL5mG9SeH6rgTCkofFkedZgHNaUyMNnw920FzI1i85d7q+dDekU3/7DlYWIVJ
 ojVZdVE9GhX1pUlFV/qZJ31YT+Km8Vl6xYzbaUuunySPEDzbZMzVcjazPb5a56oomLgAtt+IH
 MDeOfMqvixRipRgp7C3iRUtISJ9oHNJHZ8V3x4QjpRwHXj12XaVf3fA6ID1+qMRVbIYYpzAwU
 N+usjQt46zLQj8NR2bDYfwv6x95li4QwtBAIdXIrrIInKDbhj5wWu+JdcpnXvJ6qyLsfDdD17
 pxP+v6ejiytQm8gDn9N0gztD3thQRAO4V1XMwWPfw/YOCmRh+no7nmdBczYotulLu62dkDl33
 IzF72jUWNCih5EuymM/F+eYX4YRM207P9M8k4308vKflNKgqnoiwQ4ey+FHrngrSNyp2G54k0
 asPOzIY0/hBJoQ8xpGO8DGVgod1e7/ZP0Iq7H8jvflE3TLM/FvtyyFRjU7tSU1O1c7Rf8/5Qh
 qHkaNTPMhsRMeLi6+JP51UFVtlE=
Message-ID: <mailman.79.1692499461.492705.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Lightdm shouldn't run as root in any case. It should run as user
lightdm, which is a normal user that can get Pulseaudio and
speech-dispatcher working. Hope this helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

