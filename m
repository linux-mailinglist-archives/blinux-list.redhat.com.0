Return-Path: <blinux-list+bncBCVPTHE7K4IPFDXPXEDBUBHM3PCWA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4FA9D1B81
	for <lists+blinux-list@lfdr.de>; Tue, 19 Nov 2024 00:02:12 +0100 (CET)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b1502ac352sf23737785a.2
        for <lists+blinux-list@lfdr.de>; Mon, 18 Nov 2024 15:02:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731970932; cv=pass;
        d=google.com; s=arc-20240605;
        b=M/OuYiueeOe409eYkHbBraoR6GfBOXzEP9OqcKavT0mdEhpEjH2QO9cOnB0UiJLhcV
         c49Uh0i+ESEo/N87/6dCdBmRDms3JowfAXYRvQ049/0m7c1Q14bhSE6HyJuQJ8UNhKx2
         eaYpcIef2RLMr2UdBF4IgRq9bYffBKOk5nJ5gkYmdf+G3zWf/1C/n6RvhXDzGlYIjIqx
         fNd9Q5C4tLdgP7aqcI6KQmQ8Aan8/kTX8UtB7tWKPSgzh3CKzoAuTCA3jJMgvUx+OrCQ
         kca4wur2RJZUvTW5DGY2EZqe8UqqbBWkQonmo5hMMGO6/ikS2jvM/gCmbuPIrjkRV/3S
         kO1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=LiVkjG4FQISCf78Ufae7tN5QofNCGIk8a8wIBhdcAt4=;
        fh=7NMMBwzKTzZB4Xs+cEhfJLDpBVqJj/rLRHWMhRXZRbY=;
        b=f/OlWB+nw4OnylUOQBoSjG/oHT38ihzN+78KPjH+z8IDa0fZJc2jKBwH34HSvkFoUt
         lCr9IlbLLHftfNdkFCenQDSCOsiKWod4s4LDLoZOfBfuULfdE7hPe2Xfm0c87wMGVwER
         28wT330bkbogM0m19ZrqhmsyYbd31jEe5Qw48TT+5ZWNvzLglviB6BP1VJGVeK3efteN
         S5Y0kXG0c6pSN1nmcwqCE6r3L6iJLaA70hCnBDpS5NPoWMWo0IB5WRtTS1fVQkwE6zKQ
         pBEaHXlHEPeB896To0TcDE21UINCas7XryFo366EZ2ar7Dg0vSoQSv07S6831uj9EjOX
         jR6w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731970932; x=1732575732;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LiVkjG4FQISCf78Ufae7tN5QofNCGIk8a8wIBhdcAt4=;
        b=JvguU1GTpB8epUFBQW40cOWqVK2wDyRXKAPEWC9JwY90hK9ZWL3eQ4ohhXik5rPdPw
         6bhtwFVD4E9+k/VU+SaQtfaF/QBMQtyXloWoEMkCQ1ULRrHpyYHnFpX/sVFbVlSrFgmk
         4ml2mkYXuZGtMVVdhgXyX/ZEAJ+f2woUxhSJFVvTVHymb1+QBTSJEwsGOiMv7scdbPpr
         FFtlJdkLlwMHvnOgbTojpoQaePiKlRs6Q0qKya/pKFiut4X8AOTYkWRiS90KDp+tADXM
         QtcgB+ArTEb/1foD9O0Zaap4ADojsshN0LEimK9lKQ4E1pOZmV+XVCOfwq9/xs/dTlcy
         ng5g==
X-Forwarded-Encrypted: i=2; AJvYcCX0YjackpWeL4VSozqQZ1CMmmhMUs+fiFGUNc8P8fRUfC87QGkgpP6MuBJxhBoqCyfB6O4kiw==@lfdr.de
X-Gm-Message-State: AOJu0YzvnWCdRZKxQt2YS7W2gRrMC/4epSEUolEe9BaQ4VW3GVGiip8Y
	lP1j62c6Cdewa3vkeeGB7WQJDrgyqiWqHTSac4llDtHILRDGkDW3GP9FBQiBo08=
X-Google-Smtp-Source: AGHT+IHad7h3+icj/tsHpRGgRCCLo8e7szDgy9oTd63RD8Qdv83Op9GJTXgaD0yu2g97FHDoM0m0jw==
X-Received: by 2002:a05:620a:1a8f:b0:7b1:1180:a455 with SMTP id af79cd13be357-7b3622b0911mr1913799985a.22.1731970930914;
        Mon, 18 Nov 2024 15:02:10 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:2d5:b0:461:172b:9de5 with SMTP id
 d75a77b69052e-46392973ea8ls3314611cf.2.-pod-prod-07-us; Mon, 18 Nov 2024
 15:02:09 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUxif1XcNlvoeBzxtlN05UhPMUYp0Dv+pRNCrndqbk97uRzsIP5I8J1PxDzPeQJmWKeAj1TvhOMX7v9aw==@gapps.redhat.com
X-Received: by 2002:a05:620a:1710:b0:7a9:ccbd:36f5 with SMTP id af79cd13be357-7b36229f230mr2130120785a.13.1731970929806;
        Mon, 18 Nov 2024 15:02:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731970929; cv=none;
        d=google.com; s=arc-20240605;
        b=cOHej06neqkcwd/fXIgj3ciqlGAMhXS4evC/jZU7QT0GKpUqEPjWgoKorwv8+Fhbhp
         3QNihsswktQKLnAPGti7P+9shcIiNVQYap3oL/H1Mvy5Sh0iLJ/TNDRVhYdB/QXd/pwo
         ArZ4M5fhDcj2CmwvwRjNNJIIYJd7bNZ15eZsIRFK2nhC9R0JrtP4I33CnyOlMRaFArFL
         W8J8cbX10OPchaZfp0AKNKYB8TrWOXM7jGgX9tee7PZfiSq23QZG5Yt5jj0nNQPqy8Fx
         gcARqFd2if/R3zDlLQyt7CNYyVHsU4Y1aB/GxiUIjocYCpyOB4joW/W3rWbCTOE2hqgR
         e+1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=LiVkjG4FQISCf78Ufae7tN5QofNCGIk8a8wIBhdcAt4=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=hfI3MyNSkm998w/zvnTb297pNE842BJZh0MW/MS20ForrlxvA6d3hDtpkomsLJWEA4
         x/93W1/U78urd+MQLcJHSh7sIkNP7MzXryZOU53rrcfiGcBMuXsBK0q/8pVJmCv+LYMQ
         C9A6fAltR/KzJvnmKhO+26PbfvgVMzaG/Dmsnsf0LqYhKLrExOjT9ROhv1SKb/apnaAB
         3ykbMKjj7zSidWI4H0C7DZ+UhNTC/LtTRduxpBzLbvSlY1AFZwNcKbNeb3rWtoPB5DeQ
         Bra4LxBgU49SL5lYa0Dr2SogaO2ro59P6XuHrwyOQT44308zxvFROt5PWeD2ZjoIxMAz
         KiSg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7b37a8a3a46si83784785a.605.2024.11.18.15.02.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 15:02:09 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-531-fkXapp9dO5W5fXw-qjTtDQ-1; Mon,
 18 Nov 2024 18:02:08 -0500
X-MC-Unique: fkXapp9dO5W5fXw-qjTtDQ-1
X-Mimecast-MFC-AGG-ID: fkXapp9dO5W5fXw-qjTtDQ
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 625991955F69
	for <blinux-list@gapps.redhat.com>; Mon, 18 Nov 2024 23:02:07 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5DBBD1955F3C; Mon, 18 Nov 2024 23:02:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5B71B1956054
	for <blinux-list@redhat.com>; Mon, 18 Nov 2024 23:02:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EB6121954B0A
	for <blinux-list@redhat.com>; Mon, 18 Nov 2024 23:02:06 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-499-O4erJKTXNKGw5GBWJ-8QOw-1;
 Mon, 18 Nov 2024 18:02:02 -0500
X-MC-Unique: O4erJKTXNKGw5GBWJ-8QOw-1
X-Mimecast-MFC-AGG-ID: O4erJKTXNKGw5GBWJ-8QOw
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id CCA9740508
	for <blinux-list@redhat.com>; Mon, 18 Nov 2024 17:56:44 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 999A51001C5; Mon, 18 Nov 2024 17:56:44 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 99255100095
	for <blinux-list@redhat.com>; Mon, 18 Nov 2024 17:56:44 -0500 (EST)
Date: Mon, 18 Nov 2024 17:56:44 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Piper as an option in  Linux distributions?
Message-ID: <Pine.LNX.4.64.2411181752460.395171@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: dV7SxJqGyOszlDNfcc9AWAVHgHQN8IzUwVcpTFs-b3o_1731970922
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: m_yERAaLLwXhHFTblH_S32qQTF66KWH_nGdtZuZbIB0_1731970927
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

Hi all,
Asking as the voice came up in a recent freedos discussion.
A member, wanting to find something reasonably comparative to the better 
quality in their  experience, speech in hardware form.
One of the freedos developers created a means of using piper as software 
speech in DOS, as an example, but stressed the tool was a Linux one.
Anyone aware of the Piper voice?
Thanks,
Karen


