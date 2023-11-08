Return-Path: <blinux-list+bncBCVPTHE7K4IPPEFQVIDBUBFI3C4HG@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id B36FD7E605E
	for <lists+blinux-list@lfdr.de>; Wed,  8 Nov 2023 23:15:20 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-66d412e2450sf2439926d6.2
        for <lists+blinux-list@lfdr.de>; Wed, 08 Nov 2023 14:15:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699481719; x=1700086519;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wyrOwqTJWu9gWIHNkf0zhz3ceCv7c+K20VEb4uZoO9c=;
        b=k/ot5a0BMkAYIxr+qQUnG3UttQ0hy4G72Qj2g/B1MnBOZ9IPIs9MYXPsVgY1ArMY0Y
         SaU+k8pGgSzdDdwvp7d7l6G+UFAb4lRc9gzgWg9dmSOJ3lt+d8e3Lubmn6PXErExCblP
         Wekn62rNO55IaL0b5oit7zjqi/e3mM6uZsieRfzri6ev+9Wexy2TDL5IjciqZLhFOPAH
         nIubR3naV8vAhG+qz87m6t9bLknRGLjxE+QGh4Uu734wnbZ5rqhLukzOWp8rrXEBHrsG
         EKi7Wc2y6jYPiRF0lyUA0NW0fA/EVdDSLQCgkb+Y0a0tlvhfSd8EWNIYT5VUT0XDe9n7
         77fA==
X-Gm-Message-State: AOJu0Yw8B02AdTvbpFMrfIiuvhxy/Yo6fOjKuS9bNONcDzAwtQYm+K4j
	nL8fNlGX4Sh4fw7J5C5GSjDIpw==
X-Google-Smtp-Source: AGHT+IEAXbacnBHwF+RFmXk00vb8eYZ/RY6O1BvFq/STtqk+XT0XEvL2ig2Pa1N0Uwz92cgXQIJWkg==
X-Received: by 2002:a05:6214:501c:b0:66d:48e4:9928 with SMTP id jo28-20020a056214501c00b0066d48e49928mr3973971qvb.12.1699481719564;
        Wed, 08 Nov 2023 14:15:19 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:4dc9:0:b0:670:afd5:657f with SMTP id cw9-20020ad44dc9000000b00670afd5657fls205105qvb.0.-pod-prod-07-us;
 Wed, 08 Nov 2023 14:15:18 -0800 (PST)
X-Received: by 2002:a05:6214:19c4:b0:66d:18ab:b482 with SMTP id j4-20020a05621419c400b0066d18abb482mr3569988qvc.63.1699481718532;
        Wed, 08 Nov 2023 14:15:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699481718; cv=none;
        d=google.com; s=arc-20160816;
        b=ScKPCtDGWsgOozyQ1BEwJeeauvsZKp2dFvMI7FZYlHBDV9sXRLTkWzC7kT6NeapvOs
         pm644sUcdAnXXPlzo7aZHx35GC3zLlRKuiZtGxBryqXHStX/4gVO4M9dq128ZUFjZBQx
         ah6H9qQshdVKArfga61YckH56AXuYPfRQHzt0zs6Qns5Folcu2Z8cys3/8jd1xGzYN4d
         tFWPJKos3GQVkIxMXFnT8vdkVHUy8C0166CzzxUuU4KoQA/+CzWmWo61QeZq5KwFgGn7
         n2pOm2tiipRdzdVZmZYcJxNO5C5dqsiRzjCFISDHoQPqggEDSQWsEHr97eici0B2vvps
         D6bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=wyrOwqTJWu9gWIHNkf0zhz3ceCv7c+K20VEb4uZoO9c=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=hJRH4ws9E9Stcnxwf2914Wb2CgYbX3U1Ke/kR1qszx7j4Ga5Fq0bu/Ve991MqroWPq
         MK56z8JQ3Q65mNIHdlJHwiPjwmWkokJrPQQTwf9jXoxoQPEHMlyzbI3aj9SuuNyc8Mx9
         m5Sngzcj8Q/UhS2+kryXDntHglqnE5zCimXcMRQv+vzJDKAlQQApn4hCdCNhp70ypKbE
         WR4N1QjBlmwMUqGc1bRoY1e8OpOYKwBBMnI5ZL6Z7ZEQkod+pNxG76aG7ktJv9ZfAVBw
         vs6uQ3cBzU5qld/tvZOYhKlzNb8lewwPTyyg2QD1VUtjwCweekex7RoXQNyneNyEKjS5
         Vr4w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id t18-20020a05621405d200b0064f70ebac6asi1973565qvz.106.2023.11.08.14.15.18
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 14:15:18 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-631-pMvvLyJbNo-jUt6jGFohLw-1; Wed,
 08 Nov 2023 17:15:17 -0500
X-MC-Unique: pMvvLyJbNo-jUt6jGFohLw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C770F28EA6E0
	for <blinux-list@gapps.redhat.com>; Wed,  8 Nov 2023 22:15:16 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id C3FDD492BFD; Wed,  8 Nov 2023 22:15:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BCDFF492BFC
	for <blinux-list@redhat.com>; Wed,  8 Nov 2023 22:15:16 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 914F11C068C8
	for <blinux-list@redhat.com>; Wed,  8 Nov 2023 22:15:16 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-587-fsfSruOvNlu2Twx7ll4rmw-1; Wed,
 08 Nov 2023 17:15:14 -0500
X-MC-Unique: fsfSruOvNlu2Twx7ll4rmw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 0764D44FC6
	for <blinux-list@redhat.com>; Wed,  8 Nov 2023 17:15:14 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id B0AE31000C3; Wed,  8 Nov 2023 17:15:13 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id AF017100056
	for <blinux-list@redhat.com>; Wed,  8 Nov 2023 17:15:13 -0500 (EST)
Date: Wed, 8 Nov 2023 17:15:13 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: ot: any wordpress users here?
Message-ID: <Pine.LNX.4.64.2311081712160.3297033@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Karen again,  with another question.
Seeking a simple answer that I can share with the  person  doing this with 
my dreamhost WordPress suite.
best off list, so any takers  write me at klewellen@shellworld.net
not really Linux smiles.
Thanks,
Karen


