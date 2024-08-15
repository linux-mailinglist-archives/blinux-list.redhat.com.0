Return-Path: <blinux-list+bncBDYPVTOXSQEBBYUN7C2QMGQEULUIPPA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 757B89530D6
	for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 15:47:17 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6bf6f1ad75csf1763296d6.3
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 06:47:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723729636; cv=pass;
        d=google.com; s=arc-20240605;
        b=MO9C78s9LamKdAo5Dj794/rPNhaz8CtA8BOfMSXEQ3g/M6p3ofQikwAqP3sQ3wuCQo
         uE4U1Dpq5pRrbZN3pfMwQiaF/bllSLcJXr/5/pENjHLIUanm42Pt3E2p/kjspIiH0R/E
         d7GwMdvXR/yFkRZnY0YTGTZWRHBpXdkgCiKbNcOA5h9XydNiFy3JBVG6uffpZfXFvulQ
         vL1efHk5jwPhf4PqMw1MXOJL9B9SmphrJLPkGvNd1eziGX+RDIxVpfuzyPgkp+apWd6m
         g2MNMrgl/wGCIryltKF4XpzRH7FdJW+EHe0ySanVgJD7XaD14NCtu3atU8avxLp2/zFD
         KjGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=qnrM7oCjgdkXF3Pxj4sXhY0N5HlmLdxShFlvIAo5HR8=;
        fh=dKeOVTYatUwTyxJW+HiLcpjU7N1uxLNQnf0GBVmbojY=;
        b=hD4lBWqzS5BmPuw60eiECtITEt+KoKk6IWzYTWqIWSUSyRt9One+js7UyTv0UwN/ed
         szV/dCiKE+v6byAunhtgh8+jT9+H+zQQtGx7COOBQO6UI/jsmhZXNDeGjCUrMmtWV0G6
         RJV4Fb9MEPLVX6KLqS9BJLkHI0WcMbfxiYGlgXCp6Tq3srcV7st/7o6HvJ/cqyvugm8N
         zE1l2Shu65xpjHgsphTtH+ZLJXZBqvtozo8WGbhGwWONT3thVvs0TyJx8DYnB0ZedGO1
         EYYPp8AjcWy9vc7adYOIc7nLpzaWz+Uv3fl2VjmaBRDcIUzmpy4aiarDuG9G32TiGA25
         BhHQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723729636; x=1724334436;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qnrM7oCjgdkXF3Pxj4sXhY0N5HlmLdxShFlvIAo5HR8=;
        b=RzwvXkZ+9ddtl5gNecK84RNMYyNGBKLiFCic4GkEm6oYdiM42yBaDey4DlJB+UWX0x
         Yk41PnrC/JFx9Ebm48S3ir8YJFaIFfFVeROLJM0DdtxJCQQiIXCho900z+90wEVE8+50
         y9kJ/lm1RkmvTZj8tM0itJP7z+ft28r55YGqhz9U7gzspyG1mNVTCGcw3FKxgB6k5mTe
         4vTxWFurxPJ4ar/vs1HUv0uc+fwHRaFFrHhJHrhwbN3EXECxT3iLYCN/4FPwlKQuda9r
         1OOabETWAc3Rgqp9/XI4pQhPIqaIdrZQHND4s5aDMQLbz+rM8anFnpqKMUul/MXb/mrA
         /vAg==
X-Forwarded-Encrypted: i=2; AJvYcCVLQ8Re1pg0wWg1kott9QZWh7f6to0OCixrhA80pPlQpwmeA777lfECZxp5CHztjPSb5TaNlA==@lfdr.de
X-Gm-Message-State: AOJu0YxigruRUC/9uKqkPtbpFMUkkfj5uaA6uSUxy/IFcDJndiTIjB3x
	OesFFwL1R1irpU+/My4NC6P/Wm2U9vfSputQkWnLKAtrRdvcSMW78lVNaG9MCv4=
X-Google-Smtp-Source: AGHT+IFXnzd3PuLZyWw1azX14PYLnPopiKuT3R/0Zg2uO2/UbPc3z8qeVv8nKwhaT1Tr8oa9IoQFdA==
X-Received: by 2002:ac8:58cc:0:b0:44f:d986:fe1e with SMTP id d75a77b69052e-4535bb65bb0mr39137641cf.11.1723729635483;
        Thu, 15 Aug 2024 06:47:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1805:b0:447:f242:15e1 with SMTP id
 d75a77b69052e-4536745fad4ls13831051cf.1.-pod-prod-02-us; Thu, 15 Aug 2024
 06:47:14 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXcaSTWKmpVhT/+qqGCEJPPmMRLFtvj1mpiuuFmP5Hvd2uE6JeRZmNIMQ4LIf/x8JCQxO9B4ZZFOrQ27DeP+ktzabqn4xA+Dr3IJyiW
X-Received: by 2002:a05:622a:261b:b0:450:420:caaf with SMTP id d75a77b69052e-4535bab1adamr78126341cf.23.1723729634248;
        Thu, 15 Aug 2024 06:47:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723729634; cv=none;
        d=google.com; s=arc-20160816;
        b=zj8nwP0mQFFzFPCrYLkVl7Lz1UhfjxgQxaecKuxdRat95HBuiLFQBp3LXy5cBNaBrX
         axl5d3ms/piWfhbj8Pkoft6Momu1JspTfXqGZQPTF52LuXCb6IJJjM1uTGXtYb7GkQFo
         QH5xht8yDZk05f9OX8EHA/alKj/jeIFO8rsLt+MZtQq821whFQluRT9usMdeiK1As+2F
         02qZoJDB5jaLhobbmLuhvJ49Kd07ybEfdety8yv3J3cFeZU5MDL/9c/ejml/MWXmmJQ7
         R7jHOYC27Tinjv/NDfMS5l64QwbmFZsU59x7lP2H4u9TAJLuNJ3vPevqO1GOVxWN04gv
         iIoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=yDvnn/1FrTXbbv2bDRNsQkHpTa59gN7x9GWb/GVIMnc=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=l1rP0SX39FwGtXdUyhlMlvuIsvO6nbbf8dPZsTPI7FeFfhghWyWKrHI5+Geve+ibj2
         rY3jy60rmIXZuDxy8cZFXWB0y/9c874PXBbD0le9rWp2kHE6GxNLlab3U0Mu+LwEevbn
         h4XFonHlQ5vUJZUDPK6jGorNLZtTUuCOOGeB/RcvdVZzBoxENXItYVy1JisC+DoExMbQ
         1z9SFbyCAV4lXQAIwRcgYi1Re7GB6AYNN3g8kVuXNjT+t08hEiGP+ZtYNf4OEl+SXq6i
         0ADlPZ9ptjBuTPWWZIjuGZMyECRhROz0k/PqdDOJl4SE41mCwd9iJBDI1LuLuS3HT9B7
         oPuw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4536a071ac5si17249681cf.274.2024.08.15.06.47.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 06:47:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-641-gwx9my8iNyaFvw9zUBqMhA-1; Thu,
 15 Aug 2024 09:47:11 -0400
X-MC-Unique: gwx9my8iNyaFvw9zUBqMhA-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EA5F11955D45
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 13:47:10 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id E3C311955F1B; Thu, 15 Aug 2024 13:47:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E161919560AA
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 13:47:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 59B431954126
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 13:47:10 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-356-o5Q_h6GBPmGNaz9qFcOzUA-1; Thu,
 15 Aug 2024 09:47:07 -0400
X-MC-Unique: o5Q_h6GBPmGNaz9qFcOzUA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Wl5yg4fG9zFG8
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 09:47:07 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Wl5yg4d8hzcbc; Thu, 15 Aug 2024 09:47:07 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Wl5yg4cQwzcbV
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 09:47:07 -0400 (EDT)
Date: Thu, 15 Aug 2024 09:47:07 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: emmabuntus info
Message-ID: <2f5ffe14-428d-85fa-3ddf-8d080b9c72af@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

https://www.youtube.com/watch?v=irjhV-oWEGQ


-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

